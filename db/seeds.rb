# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

seed_photos = [
    ['Coffe','Small coffee first in the morning'],
    ['Coffee river','Find your own way out, don not let anyone stop you'],
    ['Fruits','Taste this fresh fruits'],
    ['Olds','Blue rocket'],
    ['Classic','Classic cars are best'],
    ['Money','Work your life to get it..'],
    ['An apple','just a single apple'],
    ['Brown coffee','Taste it'],
    ['Small person','Where do we go?'],
    ['Soccer','Soccer of football?'],
    ['Live','Live your life'],
    ['Do not look back','What are you looking at?'],
    ['Formula 1','Formula gallery'],
    ['Automobile','An auto and a mobile'],
    ['Helicopter','...an aircraft whose lift is derived from the aerodynamic forces acting on one or more powered rotors turning about substantially vertical axes']
    ]

seed_photos.each do |title,description|
    Photo.create(title: title,description:description)
end
