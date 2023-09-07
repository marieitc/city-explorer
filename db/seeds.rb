# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

require 'open-uri'
puts 'Clearing seed'
User.destroy_all
Place.destroy_all
puts 'Seed cleared'
# Places
puts 'Creating Places'

# create le wagon

# Place.create!(address: '16 Rue du Repos, 75020 Paris, France', name: 'Père Lachaise', url_image: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Main_gate_of_the_P%C3%A8re-Lachaise_Cemetery%2C_Paris_13_June_2014.jpg',
#               points: 20)
Place.create!(address: 'Place de la République, 75010 Paris, France', name: 'Statue de la République', url_image: 'https://paris1900.lartnouveau.com/paris10/place_de_la_republique/statues/1stat_rep01.jpg',
              points: 10)
Place.create!(address: '12-16 Villa Gaudelet, 75011 Paris, France', name: 'Le Wagon', url_image: 'https://studysmarter-mediafiles.s3.amazonaws.com/media/uploads/froala_editor/images/fa7583826ca3-Paris_Campus_3__3_.png',
              points: 50)
Place.create!(address: 'Place Georges Pompidou, 75004 Paris', name: 'Centre Pompidou', url_image: 'https://uploads.lebonbon.fr/source/2017/paris/site/ines/centre-pompidou-.jpg',
              points: 10)
# Place.create!(address: '47 Rue des Couronnes, 75020 Paris, France', name: 'Parc de Belleville', url_image: 'https://i.pinimg.com/originals/52/40/db/5240dbfbaf8efe30a46df6b2c60250df.jpg',
#               points: 20)
# Place.create!(address: 'Square Saint-Ambroise, 75011 Paris', name: 'Eglise Saint-Ambroise', url_image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/5f/55/04/eglise-saint-ambroise.jpg?w=1200&h=-1&s=1',
#               points: 30)
# Place.create!(address: '50 Boulevard Voltaire, 75011 Paris', name: 'Bataclan', url_image: 'https://cdn.sortiraparis.com/images/80/1665/182946-le-bataclan-de-paris-devrait-rouvrir-fin-2016.jpg',
#               points: 20)
Place.create!(address: '4 rue Eugène Spuller, 75003 Paris', name: 'Le Carreau du Temple', url_image: 'https://parisjetaime.com/data/layout_image/fr-FR/Carreau-du-temple-Exterieur-630x405-C-Fernando-Javier-Urquijo.jpg',
              points: 10)
Place.create!(address: '60 rue Réaumur, 75003 Paris', name: 'Musée des Arts et métiers', url_image: 'https://tzmedia.b-cdn.net/media/images/fr/place/420/42d4850cf4d261562535a764b1c3ba93.jpg?1587732836',
              points: 20)
Place.create!(address: 'Pl. des Vosges, 75004 Paris', name: 'Place des Vosges', url_image: 'https://cdn.paris.fr/eqpts-prod/2022/05/10/3bcff3c9f1d28c919e4599b949a1eca8.jpg',
              points: 10)
Place.create!(address: 'Pl. de la Bastille, 75012 Paris, France', name: 'Opéra Bastille', url_image: 'https://upload.wikimedia.org/wikipedia/commons/5/58/Op%C3%A9ra_Bastille.jpg',
              points: 10)
Place.create!(address: 'Pl. de la Nation, 75011 Paris, France', name: 'Place de la Nation', url_image: 'https://cdn.sortiraparis.com/images/80/87425/472415-la-nouvelle-place-de-la-nation.jpg',
              points: 10)
Place.create!(address: '1 Rue des Fossés Saint-Bernard, 75005 Paris', name: 'Institut du monde arabe', url_image: 'https://www.sogirlyblog.com/wp-content/uploads/2019/01/parvis-Institut-monde-arabe-Paris-septembre-2017_0_729_486.jpg',
              points: 20)
Place.create!(address: '29 Rue de Babylone, 75007 Paris', name: 'Jardin Catherine-Labouré', url_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Jardin_Catherine-Labour%C3%A9%2C_Paris_7e_9.jpg/2560px-Jardin_Catherine-Labour%C3%A9%2C_Paris_7e_9.jpg',
              points: 30)
Place.create!(address: '106 Rue Oberkampf, 75011 Paris', name: 'Cité du Figuier', url_image: 'https://arcanum.paris/uploads/insolite/520/cite-du-figuier-paris-insolite-secret-arcanum.jpg',
              points: 50)
Place.create!(address: '85 Boulevard Vincent-Auriol, 75013 Paris', name: 'Fresque Étreinte et Lutte de Conor Harrington', url_image: 'https://scontent.cdninstagram.com/v/t51.2885-15/245236431_1045824466229964_3723539096763179186_n.jpg?se=7&stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=100&_nc_ohc=yWu9yB0h3pEAX9-RRDM&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MjY4MzgxMTkxMjE3NjAxMzgxMQ%3D%3D.2-ccb7-5&oh=00_AfD8yt6R7VRDwpBt9KYMzaZHd5WNdcIWJPcADx-8V0ebhQ&oe=64FB013A&_nc_sid=10d13b',
              points: 30)
Place.create!(address: '48, rue de Courcelles, 75008 Paris', name: 'Maison Loo', url_image: 'https://fastly.4sqi.net/img/general/600x600/19969634__L-KiEDRn9ArLWTEQfsVErBpITzmn2dU1xDCPxS7X1s.jpg',
              points: 40)
Place.create!(address: 'Pass. Verdeau, 75009 Paris', name: 'Passage Verdeau', url_image: 'https://tropter.com/uploads/uploads/images/60/22/71b7ba6be4878bf86e3ecfc635a0b56012d2/xxx_h_a_kilichowskii_troptercom_r_-00630_big.JPG?t=20200121174654',
              points: 40)
Place.create!(address: 'Rue Crémieux, 75012 Paris', name: 'Rue Crémieux', url_image: 'https://www.cherifaistesvalises.com/wp-content/uploads/2022/12/Shutterstock_1622871085-1-scaled.jpg',
              points: 30)
Place.create!(address: "3 Pass. de l'Ancre 75003 Paris", name: "Passage de l'Ancre", url_image: 'https://1.bp.blogspot.com/-4Ep1lJjygSg/WY8ej-1zmNI/AAAAAAAAuo0/zT3xJngiRPc6WNFDy6ZEJ4UfbPrrOufzwCLcBGAs/s1600/passage-de-l-ancre-paris-3-7.JPG',
              points: 40)
poupees = Place.create!(address: '5 Vila Gaudelet 75011 Paris', name: 'Poupées Vaudoux',
                        points: 40)

poupees.photo.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'poupeevaudou.png')),
  filename: 'poupeevaudou.png', content_type: 'image/png'
)

# Place.create!(address: '12 Rue Lechevin, 75011 Paris', name: 'Ménagerie de Verre', url_image: 'https://paris-promeneurs.com/wp-content/uploads/2018/03/menagerie-verre-500.jpg',
#   points: 40)
# Place.create!(address: '72 Ave Parmentier, 75011 Paris', name: 'Biocoop Parmentier', url_image: 'https://images.happycow.net/venues/1024/17/76/hcmp177601_693082.jpeg',
#   points: 30)
# Place.create!(address: '64 Ave Parmentier, 75011 Paris', name: 'Regus Parmentier', url_image: 'https://groupeterrot.com/wp-content/uploads/2020/01/TERROT_AV-PARMENTIER_1118_JPG-HD20181130_01-1024x683.jpg.webp',
#   points: 20)

puts 'Places created'

puts 'Creating Users'

clara = User.create!(nickname: 'Clara', email: 'clara@lol.com', password: 'azerty', places: 0, distance: 0)

clara.photo.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'clara.png')),
  filename: 'clara.png', content_type: 'image/png'
)

marie = User.create!(nickname: 'Marie', email: 'marie@lol.com', password: 'azerty', places: 0, distance: 0)

marie.photo.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'marie.png')),
  filename: 'marie.png', content_type: 'image/png'
)

benjamin = User.create!(nickname: 'Ben', email: 'benjamin@lol.com', password: 'azerty', places: 0, distance: 0)

benjamin.photo.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'benjamin.png')),
  filename: 'benjamin.png', content_type: 'image/png'
)

laura = User.create!(nickname: 'Laura', email: 'laura@lol.com', password: 'azerty', places: 0, distance: 0)

laura.photo.attach(
  io: File.open(Rails.root.join('app', 'assets', 'images', 'laura.png')),
  filename: 'laura.png', content_type: 'image/png'
)

puts 'Users created'
