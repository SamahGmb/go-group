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

puts "creating 2 users ..."

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

puts "users created"

puts "create Events"
event1 = Event.create!(
  title: "Sortie pêche",
  start_date: Date.new(2020,8,20),
  end_date: Date.new(2020,8,20),
  details: "Venez avec nous pécher au loch ness!",
  location: "40460 Sanguinet",
  user_id: user1.id
)
file1 = URI.open('https://images.unsplash.com/photo-1493787039806-2edcbe808750?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
event1.photo.attach(io: file1, filename: 'fishing.jpg', content_type: 'image/jpg')

event2 = Event.create!(
  title: "Jouer au badminton",
  start_date: Date.new(2020,8,22),
  end_date: Date.new(2020,8,22),
  details: "Vous savez tenir une raquette? Rejoignez nous à la salle Jane Fonda pour des parties endiablées",
  location: "36 Rue Élie Gintrac, 33000 Bordeaux",
  user_id: user1.id
)
file2 = URI.open('https://images.unsplash.com/photo-1521537634581-0dced2fee2ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event2.photo.attach(io: file2, filename: 'badminton.jpg', content_type: 'image/jpg')

event3 = Event.create!(
  title: "Atelier cuisine vegan-friendly",
  start_date: Date.new(2020,8,24),
  end_date: Date.new(2020,8,24),
  details: "Découvrez les joies de la cuisine! Au menu: larves, orties et cloportes" ,
  location: "86 Rue Leyteire 33000 Bordeaux",
  user_id: user1.id
)
file3 = URI.open('https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80')
event3.photo.attach(io: file3, filename: 'cooking.jpg', content_type: 'image/jpg')


event4 = Event.create!(
  title: "Camping sauvage",
  start_date: Date.new(2020,8,25),
  end_date: Date.new(2020,8,26),
  details: "Nous sommes une bande de joyeux lurons qui souhaite passer deux nuits à la belle étoile
dans un endroit tenu secret jusqu'à la date du RDV" ,
  location: "Place de la Victoire33000 Bordeaux",
  user_id: user1.id
)
file4 = URI.open('https://images.unsplash.com/photo-1532339142463-fd0a8979791a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event4.photo.attach(io: file4, filename: 'camping.jpg', content_type: 'image/jpg')


event5 = Event.create!(
  title: "Nuit coquine",
  start_date: Date.new(2020,8,30),
  end_date: Date.new(2020,8,31),
  details: "Réunissons nous pour des plaisirs charnels. Port de Vêtements interdits, masque autorisé
chez Gérard. Voulez-vous vous sentir plus pendant les rapports sexuels? Souhaitez-vous approfondir votre connexion avec votre amoureux et pouvoir améliorer votre vie intime avec le temps? Dans cet atelier en ligne, vous découvrirez un nouveau monde de jeu et d'exploration. Nous vous guiderons pour plonger dans l'inconnu, apprendre à faire confiance à votre corps et au flux qui existe entre vous et votre partenaire. Vous offrir une expérience de connexion profonde, d'intimité très sensationnelle et épanouissante. Les pratiques et principes que nous vous enseignons s'appliquent à toute forme de relation, que vous soyez physiquement ensemble ou éloignés l'un de l'autre. De plus, vous n’avez pas besoin d’être dans une relation intime pour bénéficier des pratiques que nous enseignons." ,
  location: "Chartrons 33300 Bordeaux",
  user_id: user1.id
)
file5 = URI.open('https://images.unsplash.com/photo-1566400809458-66304c073b36?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80')
event5.photo.attach(io: file5, filename: 'camping.jpg', content_type: 'image/jpg')

event6 = Event.create!(
  title: "Réunion de jeunes mamans",
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,9,1),
  details: "Salut génial maman, Souhaitez-vous rencontrer virtuellement des mères partageant les mêmes idées dans un petit groupe intime dans un esprit d'harmonie, de collaboration et de soutien tout en partageant votre vie quotidienne de maman / défis et objectifs commerciaux. En tant que groupe puissant de Mastermind, nous comprenons les nombreux défis de jongler avec la maternité et les affaires en même temps et nous réalisons qu'en tant que mères, vous ne pouvez pas verser d'une tasse vide. Notre groupe Mastermind est spécialement conçu pour vous élever, vous responsabiliser et vous soutenir et vous responsabiliser afin de vous permettre, à vous et à votre entreprise, de croître. Vous vous sentirez soutenu, confiant et plus en contrôle pour générer plus de revenus et d'affaires et en même temps retirer des stratégies pour améliorer votre santé et votre bien-être que vous pourrez mettre en pratique dès que vous aurez terminé l'appel! Nous n'avons que peu de places disponibles car nous gardons intentionnellement les groupes petits et intimes afin que les mères se sentent en confiance pour partager. Par conséquent, veuillez ne réserver une place que si vous êtes pleinement engagé à participer à la session gratuite. C'est ce qu'un participant a dit à propos de son expérience Mastermind. «Vous apprenez et bénéficiez d'aider les autres dans le groupe avec des informations, des suggestions, des contacts, de l'expérience et des ressources que vous pourriez avoir dans un domaine dans lequel ils veulent créer de nouveaux niveaux de succès ou dans lequel ils veulent littéralement commencer». «L’atmosphère de« fraternité »- un espace sûr pour simplement« être », pour communiquer, pour être entendu, vu, reconnu, célébré, encouragé et tenu responsable d’une manière affirmée». S'il vous plaît, n'arrivez pas à l'heure à notre Mastermind, arrivez tôt pour bénéficier du véritable pouvoir de Mastermind avec nos mères incroyables. N'hésitez pas à visiter notre site Web www.mothersinbusiness.co.uk pour découvrir comment nous soutenons et servons les mères et lisez nos blogs gratuits en ligne sur les mères dans les affaires et aussi pour obtenir un exemplaire gratuit de notre livre électronique 'Juggling Mothers in Business'. Au plaisir de vous joindre à notre prochaine session pour découvrir la véritable puissance d'un Mastermind. Meilleurs voeux, Linda - Fondatrice, Mothers in Business." ,
  location: "2-5 Place de la Comédie, 33000 Bordeaux",
  user_id: user1.id
)
file6 = URI.open('https://images.unsplash.com/photo-1525267219888-bb077b8792cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event6.photo.attach(io: file6, filename: 'camping.jpg', content_type: 'image/jpg')


puts "Events created"
