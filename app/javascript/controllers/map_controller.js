import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"
import Toastify from 'toastify-js'
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ["pictures","scores", "validate", "foundPlaces", "score", "ranking", "scorePlayerDiv", "scores"]
  static values = {
    apiKey: String,
    targets: Array,
    areas: Array,
    players: Array,
    currentParticipationId: Number,
    gameId: Number
  }

  initialize() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "GameChannel", id: this.gameIdValue },
      { received: data => this.#handleData(data) }
    )
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    // this.#addTargetsToMap();
    // this.#fitMapToTargets();
    this.#addPlayersToMap();
    this.#fitMapToPlayers();

    this.map.on('load', () => {
      this.#addAreasToMap();
    })

    // faire le watchPosition() => au success il envoie la participationId, lat, long
    navigator.geolocation.watchPosition((coordinates) => {
      this.channel.send({
        participation_id: this.currentParticipationIdValue,
        longitude: coordinates.coords.longitude,
        latitude: coordinates.coords.latitude,
      })
    })
  }

  #handleData(data) {
    if (data.action === 'update_participation') {
      this.playerMarkers
          .find(item => item.id == data.participation_id)
          .marker.setLngLat([data.longitude, data.latitude])

      return;
    }

    if (data.action === 'found') {
      if (data.participation_id == this.currentParticipationIdValue ) {
        this.map.setPaintProperty(`area-${data.place_id}`, 'circle-opacity', 0);
        const place_card = document.getElementById(`picture-${data.place_id}`)
        console.log(place_card)
        place_card.dataset.found = "true"
        place_card.classList.remove("selected-img")
        place_card.classList.add("found")
        this.validateTarget.classList.add("d-none")
      }

      Toastify({
        text: data.message,
        duration: 3000
      }).showToast();

      this.scoresTarget.innerHTML = data.html_scores

      // [93, 92, 95]
      // participation_id = 93 && index = 0
      // j'itère avec index sur les users_rankings,
      // pour chacun d'entre eux, je cherche le score qui a la même participation
      // je lui affecte le ranking.innerText = à index + 1
      return;
    }

    if (data.action === 'endgame') {
      window.location.href = data.url
      return;
    }
  }

  // TARGETS

  #addTargetsToMap() {
    this.targetsValue.forEach((target) => {
      // const customMarker = document.createElement("div")
      // customMarker.innerHTML = marker.marker_html


      new mapboxgl.Marker()
        .setLngLat([ target.lng, target.lat ])
        .addTo(this.map)
    })
  }

  // #fitMapToTargets() {
  //   if (this.targetsValue.length == 0) return;

  //   const bounds = new mapboxgl.LngLatBounds()
  //   this.targetsValue.forEach(target => bounds.extend([ target.lng, target.lat ]))
  //   this.map.fitBounds(bounds, { padding: 80, maxZoom: 15, duration: 0 })
  // }

  // AREAS

  #addAreasToMap() {
    this.areas = new Array;
    console.log(this.areasValue)

    this.areasValue.forEach((area) => {
      // Create layer
      this.areas.push(
        {
          place_id: area.place_id,
          area: this.map.addLayer({
            "id": `area-${area.place_id}`,
            "type": "circle",
            "source": {
              "type": "geojson",
              "data": {
                "type": "FeatureCollection",
                "features": [{
                  "type": "Feature",
                  "geometry": {
                    "type": "Point",
                    "coordinates": [area.lng, area.lat]
                  }
                }]
              }
            },
            "paint": {
              // Set an initial circle-radius, we'll override it later
              "circle-radius": this.#calculatePixelRadius(this.map.getZoom()),
              "circle-color": "#393939",
              "circle-opacity": area.found ? 0 : 0.4
            }
        }),
       });

      // Update circle radius whenever the zoom level changes
      this.map.on('zoomend', () => {
        const zoom = this.map.getZoom();
        this.map.setPaintProperty(`area-${area.place_id}`, 'circle-radius', this.#calculatePixelRadius(zoom));
      });
    })
  }

  // Helper function to convert a radius in kilometers to pixels at a given zoom level.
  #calculatePixelRadius(zoom) {
    const metersPerPx = 156543.03392 * Math.cos((this.map.getCenter().lat * Math.PI) / 180) / Math.pow(2, zoom);
    const radiusInKm = 1; // Change this to the desired radius in kilometers
    const radiusInM = radiusInKm * 1000; // Convert km to meters
    return radiusInM / metersPerPx; // Return radius in pixels
  }

  select(evt) {
    if (evt.currentTarget.dataset.found == "true") { return }

    // this.areas.find(area => area.place_id == evt.params.placeId)
    this.validateTarget.classList.toggle("d-none")
    evt.currentTarget.classList.toggle("selected-img");

    if (this.map.getPaintProperty(`area-${evt.params.placeId}`, "circle-color", "#393939") === "#393939") {
      this.map.setPaintProperty(`area-${evt.params.placeId}`, "circle-color", "#5cbfcc");
    } else if (this.map.getPaintProperty(`area-${evt.params.placeId}`, "circle-color", "#5cbfcc") === "#5cbfcc" ) {
      this.map.setPaintProperty(`area-${evt.params.placeId}`, "circle-color", "#393939");
    }
  }

  //Players

  // #addPlayersToMap() {
  //   this.playerMarkers = new Array;
  //   this.playersValue.forEach((player) => {
  //     const customMarker = document.createElement("div")
  //     customMarker.innerHTML = player.marker_html

  //     this.playerMarkers.push(
  //       {
  //         id: player.participation_id,
  //         marker: new mapboxgl.Marker(customMarker)
  //           .setLngLat([ player.lng, player.lat ])
  //           .addTo(this.map)
  //       }
  //     )
  //   })
  // }

  #addPlayersToMap() {
    this.playerMarkers = new Array;
    this.playersValue.forEach((player) => {
      const customMarker = document.createElement("div")
      customMarker.innerHTML = player.marker_html

      const marker = new mapboxgl.Marker(customMarker)
        .setLngLat([ player.lng, player.lat ])
        .addTo(this.map);

      this.playerMarkers.push({
          id: player.participation_id,
          marker: marker
        });
    })
  }


  #fitMapToPlayers() {
    if (this.playersValue.length == 0) return;

    const bounds = new mapboxgl.LngLatBounds()
    this.playersValue.forEach(player => bounds.extend([ player.lng, player.lat ]))
    this.map.fitBounds(bounds, { padding: 80, maxZoom: 15, duration: 0 })
  }


  // PICTURES ACTION

  display() {
    this.picturesTarget.classList.remove("hidden-pictures")
    this.picturesTarget.classList.add("display-pictures")
  }

  hide() {
    this.picturesTarget.classList.remove("display-pictures")
    this.picturesTarget.classList.add("hidden-pictures")
  }

  fire() {
    this.scoresTarget.classList.toggle("d-none")
  }
}
