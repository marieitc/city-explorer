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

Place.create!(address: '16 Rue du Repos, 75020 Paris, France', name: 'Père Lachaise', url_image: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Main_gate_of_the_P%C3%A8re-Lachaise_Cemetery%2C_Paris_13_June_2014.jpg',
              points: 20)
Place.create!(address: 'Place de la République, 75010 Paris, France', name: 'Statue de la République', url_image: 'https://paris1900.lartnouveau.com/paris10/place_de_la_republique/statues/1stat_rep01.jpg',
              points: 10)
# Place.create!(address: '12-16 Villa Gaudelet, 75011 Paris, France', name: 'Le Wagon', url_image: 'https://studysmarter-mediafiles.s3.amazonaws.com/media/uploads/froala_editor/images/fa7583826ca3-Paris_Campus_3__3_.png',
#               points: 50)
Place.create!(address: 'Place Georges Pompidou, 75004 Paris', name: 'Centre Pompidou', url_image: 'https://uploads.lebonbon.fr/source/2017/paris/site/ines/centre-pompidou-.jpg',
              points: 10)
Place.create!(address: '47 Rue des Couronnes, 75020 Paris, France', name: 'Parc de Belleville', url_image: 'https://i.pinimg.com/originals/52/40/db/5240dbfbaf8efe30a46df6b2c60250df.jpg',
              points: 20)
Place.create!(address: 'Square Saint-Ambroise, 75011 Paris', name: 'Eglise Saint-Ambroise', url_image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/5f/55/04/eglise-saint-ambroise.jpg?w=1200&h=-1&s=1',
              points: 30)
Place.create!(address: '50 Boulevard Voltaire, 75011 Paris', name: 'Bataclan', url_image: 'https://cdn.sortiraparis.com/images/80/1665/182946-le-bataclan-de-paris-devrait-rouvrir-fin-2016.jpg',
              points: 20)
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
# Place.create!(address: '85 Boulevard Vincent-Auriol, 75013 Paris', name: 'Fresque Étreinte et Lutte de Conor Harrington', url_image: 'https://scontent.cdninstagram.com/v/t51.2885-15/245236431_1045824466229964_3723539096763179186_n.jpg?se=7&stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=100&_nc_ohc=yWu9yB0h3pEAX9-RRDM&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MjY4MzgxMTkxMjE3NjAxMzgxMQ%3D%3D.2-ccb7-5&oh=00_AfD8yt6R7VRDwpBt9KYMzaZHd5WNdcIWJPcADx-8V0ebhQ&oe=64FB013A&_nc_sid=10d13b',
#               points: 30)
Place.create!(address: '48, rue de Courcelles, 75008 Paris', name: 'Maison Loo', url_image: 'https://fastly.4sqi.net/img/general/600x600/19969634__L-KiEDRn9ArLWTEQfsVErBpITzmn2dU1xDCPxS7X1s.jpg',
              points: 40)
Place.create!(address: 'Pass. Verdeau, 75009 Paris', name: 'Passage Verdeau', url_image: 'https://tropter.com/uploads/uploads/images/60/22/71b7ba6be4878bf86e3ecfc635a0b56012d2/xxx_h_a_kilichowskii_troptercom_r_-00630_big.JPG?t=20200121174654',
              points: 40)
Place.create!(address: 'Rue Crémieux, 75012 Paris', name: 'Rue Crémieux', url_image: 'https://www.cherifaistesvalises.com/wp-content/uploads/2022/12/Shutterstock_1622871085-1-scaled.jpg',
              points: 30)
Place.create!(address: "3 Pass. de l'Ancre 75003 Paris", name: "Passage de l'Ancre", url_image: 'https://1.bp.blogspot.com/-4Ep1lJjygSg/WY8ej-1zmNI/AAAAAAAAuo0/zT3xJngiRPc6WNFDy6ZEJ4UfbPrrOufzwCLcBGAs/s1600/passage-de-l-ancre-paris-3-7.JPG',
              points: 40)
Place.create!(address: "Pl. Charles de Gaulle 75008 Paris", name: "Arc de Triomphe", url_image: 'https://static.actu.fr/uploads/2022/07/arc-triomphe-paris-secrets-anecdote-soldat-inconnu-napoleon-histoire-patrimoine.jpg',
              points: 20)
Place.create!(address: "Pl. de l'Opéra 75009 Paris", name: "Palais Garnier", url_image: 'https://uploads.lebonbon.fr/source/2022/november/2038012/couverture-ope-ra-national-de-paris_2_1200.jpg',
              points: 20)
Place.create!(address: "5 Avenue Anatole France 75007 Paris", name: "Tour Eiffel", url_image: 'https://cdn.sortiraparis.com/images/80/83517/756379-visuel-paris-tour-eiffel.jpg',
              points: 20)
Place.create!(address: "Pl. de la Madeleine 75008 Paris", name: "Eglise de la Madeleine", url_image: 'https://www.pariszigzag.fr/wp-content/uploads/2019/06/eglise-madeleine-paris-zigzag-e1560246076792.png',
              points: 40)
Place.create!(address: "35 Bd de Courcelles 75008 Paris", name: "Parc Monceau", url_image: 'https://www.unjourdeplusaparis.com/wp-content/uploads/2022/01/colonnade-naumachie-monceau.jpg',
              points: 20)
Place.create!(address: "8 Av. César Caire 75008 Paris", name: "Eglise Saint-Augustin", url_image: 'https://www.fondationavenirpatrimoineparis.fr/wp-content/uploads/2018/11/IMG_0666.jpg',
              points: 40)
Place.create!(address: "Cour Carrée du Louvre 75001 Paris", name: "Musée du Louvre", url_image: 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Paris_-_Palais_du_Louvre_-_PA00085992_-_1343.jpg',
              points: 30)
Place.create!(address: "Pont Alexandre III 75008 Paris", name: "Pont Alexandre III", url_image: 'https://upload.wikimedia.org/wikipedia/commons/a/a0/Golden_statue_on_Pont_Alexandre_III_1.jpg',
              points: 20)
Place.create!(address: "Jardin du Luxembourg 75006 Paris", name: "Jardin du Luxembourg", url_image: 'https://upload.wikimedia.org/wikipedia/commons/8/82/La_fontaine_M%C3%A9dicis%2C_Jardin_du_Luxembourg%2C_Paris_2013.jpg',
              points: 50)
Place.create!(address: "33 Av. du Maine 75015 Paris", name: "Tour Montparnasse", url_image: 'https://static.actu.fr/uploads/2020/09/tour-montparnasse-paris-3764787-1920.jpg',
              points: 20)
Place.create!(address: "Place de la concorde 75008 Paris", name: "Fontaine de la concorde", url_image: 'https://media.vanityfair.fr/photos/60d34b7eb8495767dcde92f0/master/w_2580%2Cc_limit/giuseppe_masci_agf_uig_via_getty_images1_jpg_999.jpg',
              points: 50)
Place.create!(address: "35 Rue du Chevalier de la Barre, 75018 Paris", name: "Basilique du Sacré-Cœur", url_image: 'https://www.transilien.com/sites/transilien/files/styles/manual_crop/public/2020-03/Sacr%C3%A9%20Coeur%20vignette.jpg?itok=pdtBMNQS',
              points: 20)
Place.create!(address: "Pl. des Abbesses 75018 Paris", name: "Le Mur des Je t'aime", url_image: 'https://cdn.sortiraparis.com/images/80/94880/869701-paris-decouvrez-la-belle-histoire-du-mur-des-je-t-aime-a-montmartre.jpg',
              points: 30)
Place.create!(address: "15 rue Crémieux 75012 Paris", name: "Rue Crémieux", url_image: 'https://media.vanityfair.fr/photos/60d34b80db141fd0eb5b5427/master/w_2580%2Cc_limit/roger_rozencwajg___photononstop_jpg_9312.jpg',
              points: 20)
Place.create!(address: "2 Rue de Montpensier 75001 Paris", name: "Colonnes de Buren", url_image: 'https://media.vanityfair.fr/photos/60d34b848759f470f20a41f0/master/w_2580%2Cc_limit/gettyimages_1048362104_jpg_7524.jpg',
              points: 40)
Place.create!(address: "7 Rue de l'Abreuvoir 75018 Paris", name: "Rue de l'Abreuvoir", url_image: 'https://images.prismic.io/utopix-next-website/MTQ2MjkzNjYtMGE0Yy00ODQzLTkzOTEtOGVjYTQ1ZDM0ODAy_187f5d38-6a53-4bac-8f02-f8a6f04b89ea_ruedel27abreuvoir.jpg?ixlib=js-3.8.0&w=3840&auto=format&fit=max',
              points: 20)
Place.create!(address: "Pl. d'Estienne d'Orves 75009 Paris", name: "Eglise de la Sainte Trinité", url_image: 'https://upload.wikimedia.org/wikipedia/commons/f/f7/%C3%89glise_de_la_Sainte-Trinit%C3%A9_de_Paris_Face.JPG',
              points: 30)
Place.create!(address: "25 Rue Chappe 75018 Paris", name: "Arène de Montmartre", url_image: 'https://www.montmartre-addict.com/wp-content/uploads/2022/07/festival-solidaire-arenes-montmartre.jpeg',
              points: 40)
Place.create!(address: "8bis Rue Choron 75009 Paris", name: "Notre-Dame de Lorette", url_image: 'https://www.liberation.fr/resizer/I8IbFh88ci5gbQw_qX_ZFR7V0bw=/arc-photo-liberation/eu-central-1-prod/public/M4YG5RGXNNGNVKGBZLOLIMROF4.jpg',
              points: 30)
Place.create!(address: "Pl. Vendôme 75001 Paris", name: "Colonne Vendôme", url_image: 'https://upload.wikimedia.org/wikipedia/commons/e/ef/Statue_Napol%C3%A9on_Colonne_Vend%C3%B4me_Paris_2.jpg',
              points: 20)
Place.create!(address: "2 Imp. Saint-Eustache 75001 Paris", name: "Église Saint-Eustache", url_image: 'https://www.narthex.fr/oeuvres-et-lieux/images-oeuvres-et-lieux-2019/eustache-14-flanc-sud-690.jpg/image',
              points: 10)
Place.create!(address: "Pl. Joachim du Bellay 75001 Paris", name: "Fontaine des Innocents", url_image: 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Fontaine_des_Innocents%2C_2011.JPG',
              points: 30)
Place.create!(address: "Square de la Tour Saint-Jacques 75004 Paris", name: "Tour Saint-Jacques", url_image: 'https://parisjetaime.com/data/layout_image/fr-FR/Tour-Saint-Jacques-630x405-C-OTCP-Marc-Bertrand-I-161-52.jpg',
              points: 20)
Place.create!(address: "Pl. de l'Hôtel de Ville 75004 Paris", name: "Hôtel de Ville", url_image: 'https://upload.wikimedia.org/wikipedia/commons/d/d7/H%C3%B4tel_de_Ville_de_Paris_d%C3%A9tail_fa%C3%A7ade.jpg',
              points: 30)
Place.create!(address: "1 Rue de l'Oratoire 75001 Paris", name: "Arcades rivoli", url_image: 'https://ch.schreder.com/sites/default/files/2019-07/urban-residential_streets_fr_schreder_retrofit_rivoli_4.jpg',
              points: 40)
Place.create!(address: "Pl. Jean-Paul II 75004 Paris", name: "Notre Dame de Paris", url_image: 'https://upload.wikimedia.org/wikipedia/commons/4/43/Cath%C3%A9drale_Notre-Dame_de_Paris_-_05.jpg',
              points: 20)







# Le raincy Test
Place.create!(address: "83 Av. de la Résistance 93340 Le Raincy", name: "Église Notre-Dame de Consolation", url_image: 'https://upload.wikimedia.org/wikipedia/fr/thumb/5/5b/%C3%89glise_Notre-Dame_du_Raincy_-_M%C3%A9rim%C3%A9e_PA00079948_-_1.jpeg/800px-%C3%89glise_Notre-Dame_du_Raincy_-_M%C3%A9rim%C3%A9e_PA00079948_-_1.jpeg',
              points: 20)
Place.create!(address: "121 Av. de la Résistance 93340 Le Raincy", name: "Mairie du Raincy", url_image: 'https://cloudfront-eu-central-1.images.arcpublishing.com/leparisien/N2I3DUNPCXCYP5OYRLQF26AW3M.jpg',
              points: 20)
Place.create!(address: "26 Chem. des Bourdons 93220 Gagny", name: "Parc Gustave Courbet", url_image: 'https://lh5.googleusercontent.com/p/AF1QipNkkm_PhDfiY9nyB34yf56o5VIG3bIwbrRUkZnd',
              points: 20)




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
