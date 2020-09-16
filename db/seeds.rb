# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "clean DB"
Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "creating users ..."

user1 = User.create!(
  username: "Michel",
  email: "michel@gmail.com",
  password: "Michel"
)
file_user1 = URI.open('https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user1.photo.attach(io: file_user1, filename: 'michel.jpg', content_type: 'image/jpg')

user2 = User.create!(
  username: "Julie",
  email: "julie@gmail.com",
  password: "Juliee"
)
file_user2 = URI.open('https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80')
user2.photo.attach(io: file_user2, filename: 'julie.jpg', content_type: 'image/jpg')

user3 = User.create!(
  username: "Jessica",
  email: "jessica@gmail.com",
  password: "Jessica"
)
file_user3 = URI.open('https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user3.photo.attach(io: file_user3, filename: 'jessica.jpg', content_type: 'image/jpg')

user4 = User.create!(
  username: "Muhamad",
  email: "muhamad@gmail.com",
  password: "Muhamad"
)
file_user4 = URI.open('https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user4.photo.attach(io: file_user4, filename: 'muhamad.jpg', content_type: 'image/jpg')

user5 = User.create!(
  username: "Janko",
  email: "janko@gmail.com",
  password: "Jankoo"
)
file_user5 = URI.open('https://images.unsplash.com/photo-1485290334039-a3c69043e517?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user5.photo.attach(io: file_user5, filename: 'janko.jpg', content_type: 'image/jpg')

user6 = User.create!(
  username: "Noah",
  email: "noah@gmail.com",
  password: "Noahhh"
)
file_user6 = URI.open('https://images.unsplash.com/photo-1542488586-13e4ad0330a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=765&q=80')
user6.photo.attach(io: file_user6, filename: 'noah.jpg', content_type: 'image/jpg')

user7 = User.create!(
  username: "Emilie",
  email: "emilie@gmail.com",
  password: "Emilie"
)
file_user7 = URI.open('https://images.unsplash.com/photo-1560329072-17f59dcd30a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=767&q=80')
user7.photo.attach(io: file_user7, filename: 'emilie.jpg', content_type: 'image/jpg')

user8 = User.create!(
  username: "Amir",
  email: "amir@gmail.com",
  password: "Amirrr"
)
file_user8 = URI.open('https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user8.photo.attach(io: file_user8, filename: 'amir.jpg', content_type: 'image/jpg')

user9 = User.create!(
  username: "Naya",
  email: "naya@gmail.com",
  password: "Nayaaa"
)
file_user9 = URI.open('https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user9.photo.attach(io: file_user9, filename: 'naya.jpg', content_type: 'image/jpg')

user10 = User.create!(
  username: "Florian",
  email: "florian@gmail.com",
  password: "Florian"
)
file_user10 = URI.open('https://images.unsplash.com/photo-1485893226355-9a1c32a0c81e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
user10.photo.attach(io: file_user10, filename: 'florian.jpg', content_type: 'image/jpg')

puts "users created"

puts "create Events"
event1 = Event.create!(
  title: "Sortie pêche",
  start_date: Date.new(2020,8,22),
  end_date: Date.new(2020,8,23),
  details: "Embarquez avec Leucate Evasion Marine à bord de l’Azur, Cap au nord avec le Capitaine “Baptiste”,
  vers la plage sauvage des Coussoules et La Franqui ! De Port-Leucate jusqu’à La Franqui, 4ème plus belle plage de France.
  Embarquez à bord de notre vedette rapide ” la Catalane ” avec seulement 12 personnes à bord ! Partez à la rencontre des grands
   mammifères marins de Méditerranée. Ou préférez découvrir notre apéro fait d’huîtres, charcuterie et vin du Pays.
   Offrez-vous des moments de convivialité et de détente en mer et au coucher de soleil ! Leucate Evasion Marine vous propose des
   apéros en mer sur un bateau avec 80 pers, du live, des Dj’s, des tapas, du vin et de la bonne humeur. Optez pour une sardinade
   et baignade dans l’Anse du Paradis. Ou préférez un balade au soleil couchant sur les Corbières. Selon la saison, nous vous proposons
  également d’admirer le feux d’artifice depuis la mer : une expérience unique.",
  location: "40460 Sanguinet",
  user_id: user1.id
)
file1 = URI.open('https://images.unsplash.com/photo-1493787039806-2edcbe808750?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
event1.photo.attach(io: file1, filename: 'fishing.jpg', content_type: 'image/jpg')

event2 = Event.create!(
  title: "Jouer au badminton",
  start_date: Date.new(2020,8,22),
  end_date: Date.new(2020,8,22),
  details: "Le volant est un projectile aux propriétés aérodynamiques uniques qui lui donnent une trajectoire très différente des balles utilisées dans la plupart des sports de raquette. En particulier, les plumes créent une traînée bien plus importante, causant une décélération plus rapide. Le vent ayant beaucoup d'influence sur cette trajectoire, car la masse d'un volant est généralement d'environ 5 grammes, le badminton est toujours pratiqué en intérieur.

  Depuis 1992, le badminton est un sport olympique qui se décline en 5 disciplines : simple hommes, simple dames, double hommes, double dames et double mixte.

  À haut niveau, il nécessite une excellente condition physique ainsi que de très bonnes qualités techniques et tactiques.

  C'est le sport de raquette le plus rapide du monde1, il est fréquent de voir une douzaine d'échanges en double en moins de 10 secondes. Le record de vitesse pour un volant en compétition est détenu depuis le 11 janvier 2017 par Mads Pieler Kolding, joueur danois de double hommes, qui a frappé le volant à la vitesse de 426 km/h2. Le Malaisien Tan Boon Heong, également joueur de double hommes, a, pour sa part, propulsé un volant à 493 km/h en sortie de raquette en conditions optimales, établissant ainsi le record Guinness actuel, battant ainsi l'ancien record de 421 km/h qu'il avait également établi3. ",
  location: "36 Rue Élie Gintrac, 33000 Bordeaux",
  user_id: user2.id
)
file2 = URI.open('https://images.unsplash.com/photo-1521537634581-0dced2fee2ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event2.photo.attach(io: file2, filename: 'badminton.jpg', content_type: 'image/jpg')

event3 = Event.create!(
  title: "Atelier cuisine vegan-friendly",
  start_date: Date.new(2020,8,24),
  end_date: Date.new(2020,8,24),
  details: "Que vous soyez débutant ou passionné de cuisine, une bande de copines désirant faire une activité originale, maman à la recherche d’une occupation ludique pour ses enfants …ou tout simplement quelqu’un de motivé pour changer ses habitudes alimentaires, ces cours de cuisine à domicile s’adressent à vous.
  Cette formule de cours à domicile vous permets d’organiser en toute tranquillité et décontraction chez vous, un atelier de cuisine sur mesure, selon vos désirs et vos besoins. L’assurance de passer un bon moment de partage, de rire et de convivialité en famille ou entre amis, puis de déguster ensemble vos propres réalisations tout en restant dans le cadre intimiste de votre maison." ,
  location: "86 Rue Leyteire, 33000 Bordeaux",
  user_id: user3.id
)
file3 = URI.open('https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80')
event3.photo.attach(io: file3, filename: 'cooking.jpg', content_type: 'image/jpg')


event4 = Event.create!(
  title: "Camping sauvage",
  start_date: Date.new(2020,8,25),
  end_date: Date.new(2020,8,26),
  details: "Nous sommes une bande de joyeux lurons qui souhaite passer deux nuits à la belle étoile
dans un endroit tenu secret jusqu'à la date du RDV. Le camping sauvage est une forme de camping pratiqué en pleine nature, dans un lieu qui n'est pas (ou peu) aménagé pour cette activité. Suivant les législations, il peut être interdit, autorisé, ou limité au bivouac (camping sauvage d'une nuit, du coucher au lever du soleil)." ,
  location: "col de Tramassel, 65400 Beaucens",
  user_id: user4.id
)
file4 = URI.open('https://images.unsplash.com/photo-1532339142463-fd0a8979791a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event4.photo.attach(io: file4, filename: 'camping.jpg', content_type: 'image/jpg')


event5 = Event.create!(
  title: "Nuit coquine",
  start_date: Date.new(2020,8,30),
  end_date: Date.new(2020,8,31),
  details: "Réunissons nous pour des plaisirs charnels. Port de Vêtements interdits, masque autorisé
chez Gérard. Voulez-vous vous sentir plus pendant les rapports sexuels? Souhaitez-vous approfondir votre connexion avec votre amoureux et pouvoir améliorer votre vie intime avec le temps? Dans cet atelier en ligne, vous découvrirez un nouveau monde de jeu et d'exploration. Nous vous guiderons pour plonger dans l'inconnu, apprendre à faire confiance à votre corps et au flux qui existe entre vous et votre partenaire. Vous offrir une expérience de connexion profonde, d'intimité très sensationnelle et épanouissante. Les pratiques et principes que nous vous enseignons s'appliquent à toute forme de relation, que vous soyez physiquement ensemble ou éloignés l'un de l'autre. De plus, vous n’avez pas besoin d’être dans une relation intime pour bénéficier des pratiques que nous enseignons." ,
  location: "Chartrons, 33300 Bordeaux",
  user_id: user5.id
)
file5 = URI.open('https://images.unsplash.com/photo-1566400809458-66304c073b36?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80')
event5.photo.attach(io: file5, filename: 'camping.jpg', content_type: 'image/jpg')

event6 = Event.create!(
  title: "Réunion de jeunes mamans",
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,9,1),
  details: "Salut génial maman, Souhaitez-vous rencontrer virtuellement des mères partageant les mêmes idées dans un petit groupe intime dans un esprit d'harmonie, de collaboration et de soutien tout en partageant votre vie quotidienne de maman / défis et objectifs commerciaux. En tant que groupe puissant de Mastermind, nous comprenons les nombreux défis de jongler avec la maternité et les affaires en même temps et nous réalisons qu'en tant que mères, vous ne pouvez pas verser d'une tasse vide. Notre groupe Mastermind est spécialement conçu pour vous élever, vous responsabiliser et vous soutenir et vous responsabiliser afin de vous permettre, à vous et à votre entreprise, de croître. Vous vous sentirez soutenu, confiant et plus en contrôle pour générer plus de revenus et d'affaires et en même temps retirer des stratégies pour améliorer votre santé et votre bien-être que vous pourrez mettre en pratique dès que vous aurez terminé l'appel! Nous n'avons que peu de places disponibles car nous gardons intentionnellement les groupes petits et intimes afin que les mères se sentent en confiance pour partager. Par conséquent, veuillez ne réserver une place que si vous êtes pleinement engagé à participer à la session gratuite. C'est ce qu'un participant a dit à propos de son expérience Mastermind. «Vous apprenez et bénéficiez d'aider les autres dans le groupe avec des informations, des suggestions, des contacts, de l'expérience et des ressources que vous pourriez avoir dans un domaine dans lequel ils veulent créer de nouveaux niveaux de succès ou dans lequel ils veulent littéralement commencer». «L’atmosphère de« fraternité »- un espace sûr pour simplement« être », pour communiquer, pour être entendu, vu, reconnu, célébré, encouragé et tenu responsable d’une manière affirmée». S'il vous plaît, n'arrivez pas à l'heure à notre Mastermind, arrivez tôt pour bénéficier du véritable pouvoir de Mastermind avec nos mères incroyables. N'hésitez pas à visiter notre site Web www.mothersinbusiness.co.uk pour découvrir comment nous soutenons et servons les mères et lisez nos blogs gratuits en ligne sur les mères dans les affaires et aussi pour obtenir un exemplaire gratuit de notre livre électronique 'Juggling Mothers in Business'. Au plaisir de vous joindre à notre prochaine session pour découvrir la véritable puissance d'un Mastermind. Meilleurs voeux, Linda - Fondatrice, Mothers in Business." ,
  location: "2-5 Place de la Comédie, 33000 Bordeaux",
  user_id: user7.id
)
file6 = URI.open('https://images.unsplash.com/photo-1525267219888-bb077b8792cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event6.photo.attach(io: file6, filename: 'camping.jpg', content_type: 'image/jpg')

event7 = Event.create!(
  title: "Réunion sur le salariat",
  start_date: Date.new(2020,9,20),
  end_date: Date.new(2020,9,20),
  details: "Le portage salarial permet d’entreprendre, de lancer ou tester son activité tout en bénéficiant du statut de salarié, de son statut social protecteur et de services d’accompagnement. La gestion administrative de votre activité est déléguée à la société de portage salarial. Ainsi, vous vous consacrez pleinement à votre métier. Ce dispositif propose de nouvelles perspectives dans l’organisation et la relation au travail et répond au besoin actuel de flexibilité et de sécurité. Au programme : Qu’est-ce que le portage salarial ? À qui s’adresse le portage salarial ? Comment Talorig m’accompagne dans mon projet : accompagnement personnalisé et gestion administrative ? Quelle rémunération vais-je percevoir ? Pour quelles missions ? Ces réunions sont ouvertes à tout public et quelle que soit votre situation (en réflexion sur sa démarche, à l’écoute d’opportunité, ou prêt à se lancer). Pour vous inscrire cliquez sur lien suivant : https://event.webinarjam.com/register/25/84l7qunn." ,
  location: "Place de jaude, 63000 Clermont-Ferrand",
  user_id: user6.id
)
file7 = URI.open('https://images.unsplash.com/photo-1557804506-669a67965ba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80')
event7.photo.attach(io: file7, filename: 'reunion.jpg', content_type: 'image/jpg')

event8 = Event.create!(
  title: "Escalade en pleine nature",
  start_date: Date.new(2020,8,22),
  end_date: Date.new(2020,8,22),
  details: "La fascination pour les montagnes suscite chez beaucoup le désir de gravir ces immenses formations rocheuses et de regarder le monde depuis son plus haut point de vue. Chaque année, d'innombrables touristes, mais aussi des alpinistes et grimpeurs de toutes sortes se rendent sur les plus hauts sommets pour profiter de la beauté du paysage de montagne, faire du sport et se dépasser.
  Cependant, la montagne abrite de nombreuses espèces végétales et animales uniques en leur genre et très souvent menacées. C'est pourquoi il est particulièrement important d'observer certaines règles de conduite lors de vos sorties entre grimpeurs. Suivre une charte de l’environnement pour l’escalade permettra à la flore et la faune de continuer à se développer sans être perturbées ou endommagées… laissant la voie libre et somptueuse pour les futurs grimpeur.
  Que vous soyez un débutant ou un alpiniste chevronné, nos conseils pour mieux protéger la nature (que vous pouvez aussi télécharger au format PDF) vous aideront à devenir un meilleur grimpeur.",
  location: "31160 Cabanac-Cazaux",
  user_id: user8.id
)
file8 = URI.open('https://images.unsplash.com/photo-1522163182402-834f871fd851?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=993&q=80')
event8.photo.attach(io: file8, filename: 'climbing.jpg', content_type: 'image/jpg')

event9 = Event.create!(
  title: "Bowling",
  start_date: Date.new(2020,8,21),
  end_date: Date.new(2020,8,21),
  details: "Venez faire du bowling avec nous",
  location: "Terrasse Front du Médoc, Bordeaux",
  user_id: user3.id
)
file9 = URI.open('https://images.unsplash.com/photo-1545056453-f0359c3df6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event9.photo.attach(io: file9, filename: 'bowling.jpg', content_type: 'image/jpg')

event10 = Event.create!(
  title: "Escalade à Arkose",
  start_date: Date.new(2020,8,22),
  end_date: Date.new(2020,8,22),
  details: "Commençons par les basiques ! L’escalade sportive se pratique à l’extérieur mais aussi en salle. À moins d’être assuré par un enrouleur automatique comme en escalade de vitesse, il faut être en binôme : un grimpeur et un assureur. La paroi à gravir est toujours équipée d’éléments d’assurage et est à parcourir d’un coup. Une fois arrivé en haut, on atteint un relais : c’est un double anneau métallique qui permet d’attacher la corde en rappel et de redescendre en toute tranquillité.
  Cette discipline se dispute aux Jeux Olympiques sous le nom d’escalade de « difficulté ». Le grimpeur progresse sur un mur d’environ 15 mètres en s’assurant en tête. Son objectif ? Aller le plus haut possible !",
  location: "170 cours du Médoc, Bordeaux",
  user_id: user4.id
)
file10 = URI.open('https://images.unsplash.com/photo-1564769662533-4f00a87b4056?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1114&q=80')
event10.photo.attach(io: file10, filename: 'escalade.jpg', content_type: 'image/jpg')

puts "Events created"

puts "creating bookings"

booking1 = Booking.create!(
  event_id: event1.id,
  user_id: user2.id
)

booking2 = Booking.create!(
  event_id: event1.id,
  user_id: user3.id
)

booking3 = Booking.create!(
  event_id: event3.id,
  user_id: user4.id
)

booking4 = Booking.create!(
  event_id: event1.id,
  user_id: user5.id
)

booking5 = Booking.create!(
  event_id: event1.id,
  user_id: user2.id
)

booking6 = Booking.create!(
  event_id: event2.id,
  user_id: user1.id
)

booking7 = Booking.create!(
  event_id: event2.id,
  user_id: user10.id
)

Booking.create!(
  event_id: event2.id,
  user_id: user8.id
)

Booking.create!(
  event_id: event2.id,
  user_id: user6.id
)

Booking.create!(
  event_id: event3.id,
  user_id: user9.id
)

Booking.create!(
  event_id: event3.id,
  user_id: user5.id
)

Booking.create!(
  event_id: event3.id,
  user_id: user6.id
)

Booking.create!(
  event_id: event4.id,
  user_id: user9.id
)

Booking.create!(
  event_id: event4.id,
  user_id: user1.id
)

Booking.create!(
  event_id: event4.id,
  user_id: user2.id
)

Booking.create!(
  event_id: event5.id,
  user_id: user2.id
)

Booking.create!(
  event_id: event5.id,
  user_id: user3.id
)

Booking.create!(
  event_id: event5.id,
  user_id: user1.id
)

Booking.create!(
  event_id: event6.id,
  user_id: user3.id
)

Booking.create!(
  event_id: event6.id,
  user_id: user2.id
)

Booking.create!(
  event_id: event6.id,
  user_id: user5.id
)

Booking.create!(
  event_id: event7.id,
  user_id: user8.id
)

Booking.create!(
  event_id: event8.id,
  user_id: user6.id
)

Booking.create!(
  event_id: event8.id,
  user_id: user5.id
)

Booking.create!(
  event_id: event8.id,
  user_id: user10.id
)

Booking.create!(
  event_id: event9.id,
  user_id: user1.id
)

Booking.create!(
  event_id: event10.id,
  user_id: user4.id
)

Booking.create!(
  event_id: event10.id,
  user_id: user7.id
)

puts "bookings created"




