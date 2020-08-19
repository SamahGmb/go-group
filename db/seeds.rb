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
  user_id: user1.id
)
file2 = URI.open('https://images.unsplash.com/photo-1521537634581-0dced2fee2ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event2.photo.attach(io: file2, filename: 'badminton.jpg', content_type: 'image/jpg')

event3 = Event.create!(
  title: "Atelier cuisine vegan-friendly",
  start_date: Date.new(2020,8,24),
  end_date: Date.new(2020,8,24),
  details: "Que vous soyez débutant ou passionné de cuisine, une bande de copines désirant faire une activité originale, maman à la recherche d’une occupation ludique pour ses enfants …ou tout simplement quelqu’un de motivé pour changer ses habitudes alimentaires, ces cours de cuisine à domicile s’adressent à vous.
  Cette formule de cours à domicile vous permets d’organiser en toute tranquillité et décontraction chez vous, un atelier de cuisine sur mesure, selon vos désirs et vos besoins. L’assurance de passer un bon moment de partage, de rire et de convivialité en famille ou entre amis, puis de déguster ensemble vos propres réalisations tout en restant dans le cadre intimiste de votre maison." ,
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
dans un endroit tenu secret jusqu'à la date du RDV. Le camping sauvage est une forme de camping pratiqué en pleine nature, dans un lieu qui n'est pas (ou peu) aménagé pour cette activité. Suivant les législations, il peut être interdit, autorisé, ou limité au bivouac (camping sauvage d'une nuit, du coucher au lever du soleil)." ,
  location: "Place de la Victoire 33000 Bordeaux",
  user_id: user1.id
)
file4 = URI.open('https://images.unsplash.com/photo-1532339142463-fd0a8979791a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event4.photo.attach(io: file4, filename: 'camping.jpg', content_type: 'image/jpg')


event5 = Event.create!(
  title: "Nuit coquine",
  start_date: Date.new(2020,8,30),
  end_date: Date.new(2020,8,31),
  details: "Réunissons nous pour des plaisirs charnels. Port de Vêtements interdits, masque autorisé
chez Gérard" ,
  location: "Chartrons 33300 Bordeaux",
  user_id: user1.id
)
file5 = URI.open('https://images.unsplash.com/photo-1566400809458-66304c073b36?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80')
event5.photo.attach(io: file5, filename: 'camping.jpg', content_type: 'image/jpg')

event6 = Event.create!(
  title: "Réunion de jeunes mamans",
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,9,1),
  details: "échangeons nos petites astuces pour des bambins épanouis.
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ,
  location: "2-5 Place de la Comédie, 33000 Bordeaux",
  user_id: user1.id
)
file6 = URI.open('https://images.unsplash.com/photo-1525267219888-bb077b8792cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
event6.photo.attach(io: file6, filename: 'camping.jpg', content_type: 'image/jpg')


puts "Events created"
