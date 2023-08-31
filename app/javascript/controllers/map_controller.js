import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ["pictures"]
  static values = {
    apiKey: String,
    targets: Array,
    areas: Array,
    players: Array,
    currentParticipationId: Number
  }

  initialize() {
    // subscribe to channel
    // => received: => retrouver le bon marler dans this.playerMarkers et faire setLngLat dessus
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    // this.#addTargetsToMap();
    this.#fitMapToTargets();
    this.#addPlayersToMap();

    this.map.on('load', () => {
      this.#addAreasToMap();
    })

    // faire le watchPosition() => au success il envoie la participationId, lat, long
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

  #fitMapToTargets() {
    if (this.targetsValue.length == 0) return;

    const bounds = new mapboxgl.LngLatBounds()
    this.targetsValue.forEach(target => bounds.extend([ target.lng, target.lat ]))
    this.map.fitBounds(bounds, { padding: 80, maxZoom: 15, duration: 0 })
  }

  // AREAS

  #addAreasToMap() {
    this.areasValue.forEach((area, index) => {
      // Create layer
      this.map.addLayer({
        "id": `area-${index}`,
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
          "circle-color": "#68A8F8",
          "circle-opacity": 0.5
        }
      });

      // Update circle radius whenever the zoom level changes
      this.map.on('zoomend', () => {
        const zoom = this.map.getZoom();
        this.map.setPaintProperty(`area-${index}`, 'circle-radius', this.#calculatePixelRadius(zoom));
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

  //Players

  #addPlayersToMap() {
    this.#currentPosition();
    this.playerMarkers = new Array;
    this.playersValue.forEach((player) => {
      // const customMarker = document.createElement("div")
      // customMarker.innerHTML = marker.marker_html


      this.playerMarkers.push(
        {
          id: player.participation_id,
          marker: new mapboxgl.Marker()
            .setLngLat([ player.lng, player.lat ])
            .addTo(this.map)
        }
      )
    })
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
}
