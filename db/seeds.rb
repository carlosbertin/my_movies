# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# movies = [
#     {title: 'Alladin', release_date: '25-Nov-1992'},
#     {title: 'When Harry Met Sally', release_date: '21-Jul-1989'},
#     {title: 'The Help', release_date: '10-Aug-2011'},
#     {title: 'Raiders of the Lost Ark', release_date: '12-Jun-1981'}
# ]

# movies.each do |movie|
#     Movie.create!(movie)
# end

actors = [
    {name: 'Margot Robbie', gender: 'female'},
    {name: 'Judit Ferrer', gender: 'female'},
    {name: 'Zilda Camarão', gender: 'female'},
    {name: 'Rachel Trizz', gender: 'female'},
    {name: 'Harold Meers', gender: 'male'},
    {name: 'Silvia Petler', gender: 'female'},
    {name: 'Robbie Williams', gender: 'female'},
    {name: 'David Hornet', gender: 'male'},
]

directors = [
    {name: 'Mel Gibson', gender: 'male'},
    {name: 'Robson Trur', gender: 'male'},
    {name: 'Liconln Travis', gender: 'male'},
    {name: 'Regina Bealer', gender: 'female'},
    {name: 'Javier Rodrigues Martin', gender: 'male'},
    {name: 'Michele Seans', gender: 'female'}
]

actors.each do |actor|
    Actor.create!(actor)
end

directors.each do |director|
    Director.create!(director)
end