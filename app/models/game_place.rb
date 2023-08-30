class GamePlace < ApplicationRecord
  belongs_to :place
  belongs_to :game

  def generate_area_center
    coords = random_point(0.2)
    self.longitude = coords[:longitude]
    self.latitude = coords[:latitude]

    save
  end

  def random_point(distance)
    # Convertir la distance en radians
    distance_in_radians = distance.fdiv(6371) # Rayon de la terre en km

    # Générer des angles aléatoires
    random_angle = rand(0.0..(2 * Math::PI))

    # Conversion des latitudes et longitudes en radians
    lat_rad = place.latitude * Math::PI / 180
    lon_rad = place.longitude * Math::PI / 180

    # Calculer les nouvelles coordonnées
    new_latitude_rad = Math.asin(Math.sin(lat_rad) * Math.cos(distance_in_radians) + Math.cos(lat_rad) * Math.sin(distance_in_radians) * Math.cos(random_angle))
    new_longitude_rad = lon_rad + Math.atan2(Math.sin(random_angle) * Math.sin(distance_in_radians) * Math.cos(lat_rad), Math.cos(distance_in_radians) - Math.sin(lat_rad) * Math.sin(new_latitude_rad))

    # Convertir de radians à degrés
    new_latitude = new_latitude_rad * 180 / Math::PI
    new_longitude = new_longitude_rad * 180 / Math::PI

    return { latitude: new_latitude, longitude: new_longitude }
  end
end
