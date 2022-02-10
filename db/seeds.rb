# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Studio.create(name: "Test Studio", email: 'test@test.com', phone: 5553361234, address_1: '55 South St', city: 'Denver', state: 'CO', zipcode: 81223)

Teacher.create(name: 'Test Teacher 1', bio: 'I love to dance!')
Teacher.create(name: 'Test Teacher 2', bio: 'I love to dance more!')
Teacher.create(name: 'Test Teacher 3', bio: 'I love to dance the most!')
Teacher.create(name: 'Test Teacher 4', bio: 'I love to dance more than anyone else!')

DanceClass.create(title: 'Jazz', description: 'Fun, high energy class.', level_id: 3, price: 15, teacher_id: 1, studio_id: 1)
DanceClass.create(title: 'Modern', description: 'So much rolling on the floor goodness.', level_id: 5, price: 15, teacher_id: 1, studio_id: 1)
DanceClass.create(title: 'Ballet', description: 'So much petit allegro you will want to die in the best way.', level_id: 5, price: 15, teacher_id: 2, studio_id: 1)
DanceClass.create(title: 'Hip Hop', description: 'Get your groove on in this class!', level_id: 2, price: 15, teacher_id: 2, studio_id: 1)
DanceClass.create(title: 'African', description: 'All level class with live drummers', level_id: 7, price: 15, teacher_id: 3, studio_id: 1)
DanceClass.create(title: 'Contemporary', description: 'A mix of all styles mostly.', level_id: 5, price: 15, teacher_id: 3, studio_id: 1)
DanceClass.create(title: 'Heels', description: 'Get your sass on in this class!', level_id: 4, price: 15, teacher_id: 4, studio_id: 1)
DanceClass.create(title: 'Tap', description: 'Get in touch with your rhythm, even if you think you don\'t have any.', level_id: 7, price: 15, teacher_id: 4, studio_id: 1)

Level.create(title: 'Beg')
Level.create(title: 'Beg/Int')
Level.create(title: 'Int')
Level.create(title: 'Int/Adv')
Level.create(title: 'Adv')
Level.create(title: 'Professional')
Level.create(title: 'All levels')