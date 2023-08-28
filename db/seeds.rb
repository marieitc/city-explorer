# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
puts 'Clearing seed'
User.destroy_all
Place.destroy_all
puts 'Seed cleared'
# Places
puts 'Creating Places'
Place.create(address: '13-15 Rue de la Croix Faubin, 75011 Paris', name: 'La machine du bon docteur Guillotin', url_image: 'https://tse2.mm.bing.net/th?id=OIP.8yZ5qjMJGUAeplr374kimwHaDx&pid=Api&P=0')
Place.create(address: 'Place de la nation, 75011, Paris', name: "Une place à l'histoire bien occultée", url_image: 'https://tse4.mm.bing.net/th?id=OIP.CWPTxC74DifA-YihlnpAPQHaFY&pid=Api&P=0')
Place.create(address: '139 rue de Charonne, 75011, Paris', name: 'Un numéro gravé', url_image: 'https://tse3.mm.bing.net/th?id=OIP.USEYvwgVlrFQibJTQJ97ugHaFj&pid=Api&P=0')
Place.create(address: 'Place de la Bastille, 75011, Paris', name: 'Un petit malin expert en marketing !', url_image: 'https://tse3.mm.bing.net/th?id=OIP.u2Btm6-ZsFcU98YGb7xtiAHaDW&pid=Api&P=0')
Place.create(address: 'Place de la Bastille, 75011, Paris', name: 'Les momies de la Bastille', url_image: 'https://tse3.mm.bing.net/th?id=OIP.eAidPqIegsqI4ld-L5MYTwHaFB&pid=Api&P=0')
Place.create(address: 'Place de la Bastille, 75011, Paris', name: 'Une statuette insolite', url_image: 'https://tse2.mm.bing.net/th?id=OIP._zZAQgMTZgGsjxO8GZMs7gHaFh&pid=Api&P=0')
Place.create(address: 'Place Pasdeloup, 75011, Paris', name: 'Un cirque ou un cinéma ?', url_image: 'https://tse4.mm.bing.net/th?id=OIP.7kVYYa56KzAFEAQDoZMOrAEsDH&pid=Api&P=0')
Place.create(address: '77 Boulevard de Belleville, 75011, Paris', name: 'Des célébrités bienveillantes', url_image: 'https://tse1.mm.bing.net/th?id=OIP.OuFrw8kD2G6nShrulpvF8wAAAA&pid=Api&P=0')
Place.create(address: 'Cour Damoye, 75011, Paris', name: "Une cité où l'on aimerait vivre...", url_image: 'https://tse4.mm.bing.net/th?id=OIP.sDQhhgNsGaf_x7HxMAYtaQHaHa&pid=Api&P=0')
Place.create(address: 'Rue des Boulets, 75011, Paris', name: 'La rue mal nommée', url_image: 'https://tse4.mm.bing.net/th?id=OIP.5WEHnrLNJ6_fVsex34p5zAHaE6&pid=Api&P=0')
Place.create(address: '201 bd Voltaire, 75011, Paris', name: 'Un hommage bien mérité', url_image: 'https://tse4.mm.bing.net/th?id=OIP.M0SkAwy6Bsb8FnkEHILXsAHaE7&pid=Api&P=0')
Place.create(address: 'Rue du Chemin Vert, 75011, Paris', name: 'Une rue bien nommée', url_image: 'https://tse1.mm.bing.net/th?id=OIP.umeXT4rF3D-sPPlP49wWIQHaEK&pid=Api&P=0')
Place.create(address: '177 rue de Charonne, 75011, Paris', name: 'Paroisse en sous-sol', url_image: 'https://tse1.mm.bing.net/th?id=OIP.FjURZQwhSm2grDyrTyFaaAHaEo&pid=Api&P=0')
Place.create(address: '42 rue Léon Frot, 75011, Paris', name: 'Une association incroyable', url_image: 'https://tse2.mm.bing.net/th?id=OIP.fEdK-JeuGkuiD4_qvM8qJgHaFj&pid=Api&P=0')
Place.create(address: 'Rue de la Roquette, 75011, Paris', name: 'Un zouave guérisseur qui jouait du trombone !', url_image: 'https://tse1.mm.bing.net/th?id=OIP.uG-EDvCLFROCgn5ocD3TUgHaIv&pid=Api&P=0')

User.create(nickname: 'Indiana Jones', email: 'indiana.jones@gmail.com', password: 'azerty', places: 0, distance: 0)
