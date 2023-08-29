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

Place.create(address: '16 Rue du Repos, 75020 Paris', name: 'Père Lachaise', url_image: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Main_gate_of_the_P%C3%A8re-Lachaise_Cemetery%2C_Paris_13_June_2014.jpg')
Place.create(address: 'Place de la République, 75010, Paris', name: 'Statue de la République', url_image: 'https://paris1900.lartnouveau.com/paris10/place_de_la_republique/statues/1stat_rep01.jpg')
Place.create(address: '16 villa Gaudelet', name: 'Le Wagon', url_image: 'https://studysmarter-mediafiles.s3.amazonaws.com/media/uploads/froala_editor/images/fa7583826ca3-Paris_Campus_3__3_.png')
Place.create(address: 'Place Georges Pombidou, 75004, Paris', name: 'Centre Pompidou', url_image: 'https://uploads.lebonbon.fr/source/2017/paris/site/ines/centre-pompidou-.jpg')
Place.create(address: '47 Rue des Couronnes, 75020 Paris', name: 'Parc de Belleville', url_image: 'https://i.pinimg.com/originals/52/40/db/5240dbfbaf8efe30a46df6b2c60250df.jpg')
Place.create(address: 'Square Saint-Ambroise, 75011 Paris', name: 'Eglise Saint-Ambroise', url_image: 'https://files.structurae.net/files/photos/64/paris_11eme_arrondissement/p1170024.jpg')
Place.create(address: '50 Boulevard Voltaire, 75011 Paris', name: 'Bataclan', url_image: 'https://cdn.sortiraparis.com/images/80/1665/182946-le-bataclan-de-paris-devrait-rouvrir-fin-2016.jpg')
Place.create(address: '4 rue Eugène Spuller, 75003, Paris', name: 'Le Carreau du Temple', url_image: 'https://parisjetaime.com/data/layout_image/fr-FR/Carreau-du-temple-Exterieur-630x405-C-Fernando-Javier-Urquijo.jpg')
Place.create(address: '60 rue Réaumur, 75003 Paris', name: 'Musée des Arts et métiers', url_image: 'https://tzmedia.b-cdn.net/media/images/fr/place/420/42d4850cf4d261562535a764b1c3ba93.jpg?1587732836')
Place.create(address: 'Pl. des Vosges, 75004 Paris', name: 'Place des Vosges', url_image: 'https://cdn.paris.fr/eqpts-prod/2022/05/10/3bcff3c9f1d28c919e4599b949a1eca8.jpg')
Place.create(address: 'Pl. de la Bastille, 75012 Paris', name: 'Opéra Bastille', url_image: 'https://upload.wikimedia.org/wikipedia/commons/5/58/Op%C3%A9ra_Bastille.jpg')
# Place.create(address: 'Rue du Chemin Vert, 75011, Paris', name: 'Une rue bien nommée', url_image: 'https://tse1.mm.bing.net/th?id=OIP.umeXT4rF3D-sPPlP49wWIQHaEK&pid=Api&P=0')
# Place.create(address: '177 rue de Charonne, 75011, Paris', name: 'Paroisse en sous-sol', url_image: 'https://tse1.mm.bing.net/th?id=OIP.FjURZQwhSm2grDyrTyFaaAHaEo&pid=Api&P=0')
# Place.create(address: '42 rue Léon Frot, 75011, Paris', name: 'Une association incroyable', url_image: 'https://tse2.mm.bing.net/th?id=OIP.fEdK-JeuGkuiD4_qvM8qJgHaFj&pid=Api&P=0')
# Place.create(address: 'Rue de la Roquette, 75011, Paris', name: 'Un zouave guérisseur qui jouait du trombone !', url_image: 'https://tse1.mm.bing.net/th?id=OIP.uG-EDvCLFROCgn5ocD3TUgHaIv&pid=Api&P=0')

User.create(nickname: 'Clara', email: 'clara.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
User.create(nickname: 'Marie', email: 'marie.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
User.create(nickname: 'Benjamin', email: 'benjamin.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
User.create(nickname: 'Laura', email: 'laura.lol@gmail.com', password: 'azerty', places: 0, distance: 0)
