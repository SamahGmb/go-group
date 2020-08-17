# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.create!(
  title: "Sortie pêche",
  start_date: Date.new(2020,8,20),
  end_date: Date.new(2020,8,20),
  details: "Venez avec nous pécher au loch ness!",
  location: "Le loch ness",
  user_id: 1
)

Event.create!(
  title: "Jouer au badminton",
  start_date: Date.new(2020,8,22),
  end_date: Date.new(2020,8,22),
  details: "Vous savez tenir une raquette? Rejoignez nous à la salle Jane Fonda pour des parties endiablées",
  location: "Salle Jane Fonda",
  user_id: 1
)

Event.create!(
  title: "Atelier cuisine végan-friendly",
  start_date: Date.new(2020,8,24),
  end_date: Date.new(2020,8,24),
  details: "Découvrez les joies de la cuisine! Au menu: larves, orties et cloportes" ,
  location: "3, rue des mygales",
  user_id: 1
)


Event.create!(
  title: "Camping sauvage",
  start_date: Date.new(2020,8,25),
  end_date: Date.new(2020,8,26),
  details: "Nous sommes une bande de joyeux lurons qui souhaite passer deux nuits à la belle étoile
dans un endroit tenu secret jusqu'à la date du RDV" ,
  location: "place de la victoire",
  user_id: 1
)


Event.create!(
  title: "Nuit coquine",
  start_date: Date.new(2020,8,30),
  end_date: Date.new(2020,8,31),
  details: "Réunissons nous pour des plaisirs charnels. Port de Vêtements interdits, masque autorisé
chez Gérard" ,
  location: "Au parc de l'ermitage",
  user_id: 1
)

Event.create!(
  title: "Réunion de jeunes mamans",
  start_date: Date.new(2020,9,1),
  end_date: Date.new(2020,9,1),
  details: "échangeons nos petites astuces pour des bambins épanouis" ,
  location: "Au Salon de thé Juliena",
  user_id: 1
)

