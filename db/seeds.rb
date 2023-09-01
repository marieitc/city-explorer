# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
puts 'Clearing seed'
Place.destroy_all
puts 'Seed cleared'
# Places
puts 'Creating Places'

# create le wagon

Place.create(address: '16 Rue du Repos, 75020 Paris, France', name: 'Père Lachaise', url_image: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Main_gate_of_the_P%C3%A8re-Lachaise_Cemetery%2C_Paris_13_June_2014.jpg')
Place.create(address: 'Place de la République, Paris, France', name: 'Statue de la République', url_image: 'https://paris1900.lartnouveau.com/paris10/place_de_la_republique/statues/1stat_rep01.jpg')
Place.create(address: '12-16 Villa Gaudelet, 75011 Paris, France', name: 'Le Wagon', url_image: 'https://studysmarter-mediafiles.s3.amazonaws.com/media/uploads/froala_editor/images/fa7583826ca3-Paris_Campus_3__3_.png')
Place.create(address: 'Place Georges Pompidou, 75004 Paris', name: 'Centre Pompidou', url_image: 'https://uploads.lebonbon.fr/source/2017/paris/site/ines/centre-pompidou-.jpg')
Place.create(address: '47 Rue des Couronnes, 75020 Paris, France', name: 'Parc de Belleville', url_image: 'https://i.pinimg.com/originals/52/40/db/5240dbfbaf8efe30a46df6b2c60250df.jpg')
Place.create(address: 'Square Saint-Ambroise, 75011 Paris', name: 'Eglise Saint-Ambroise', url_image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/5f/55/04/eglise-saint-ambroise.jpg?w=1200&h=-1&s=1')
Place.create(address: '50 Boulevard Voltaire, 75011 Paris', name: 'Bataclan', url_image: 'https://cdn.sortiraparis.com/images/80/1665/182946-le-bataclan-de-paris-devrait-rouvrir-fin-2016.jpg')
Place.create(address: '4 rue Eugène Spuller, 75003 Paris', name: 'Le Carreau du Temple', url_image: 'https://parisjetaime.com/data/layout_image/fr-FR/Carreau-du-temple-Exterieur-630x405-C-Fernando-Javier-Urquijo.jpg')
Place.create(address: '60 rue Réaumur, 75003 Paris', name: 'Musée des Arts et métiers', url_image: 'https://tzmedia.b-cdn.net/media/images/fr/place/420/42d4850cf4d261562535a764b1c3ba93.jpg?1587732836')
Place.create(address: 'Pl. des Vosges, 75004 Paris', name: 'Place des Vosges', url_image: 'https://cdn.paris.fr/eqpts-prod/2022/05/10/3bcff3c9f1d28c919e4599b949a1eca8.jpg')
Place.create(address: 'Pl. de la Bastille, 75012 Paris, France', name: 'Opéra Bastille', url_image: 'https://upload.wikimedia.org/wikipedia/commons/5/58/Op%C3%A9ra_Bastille.jpg')
Place.create(address: 'Pl. de la Nation, 75011 Paris, France', name: 'Place de la Nation', url_image: 'https://cdn.sortiraparis.com/images/80/87425/472415-la-nouvelle-place-de-la-nation.jpg')
Place.create(address: '1 Rue des Fossés Saint-Bernard, 75005 Paris', name: 'Institut du monde arabe', url_image: 'https://www.sogirlyblog.com/wp-content/uploads/2019/01/parvis-Institut-monde-arabe-Paris-septembre-2017_0_729_486.jpg')

User.create(nickname: 'Clara', email: 'clara.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
User.create(nickname: 'Marie', email: 'marie.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
User.create(nickname: 'Benjamin', email: 'benjamin.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
User.create(nickname: 'Laura', email: 'laura.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
