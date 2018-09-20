# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

workouts =[
    {name: "Megan Bailey", location: "Los Angeles", description: "Get beach ready abs with this quick core fix! It incorporates sit ups and planks.", reps: 10, duration: "30 min", image: "https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/94/38/466713744.jpg"},
    {name: "Maria Dees", location: "Marina Del Rey", description: "Best arm workout ever!", reps: 15, duration: "15 min", image: "https://www.mensjournal.com/wp-content/uploads/mf/push_ups_main_0.jpg?w=1200&h=1200&crop=1"},
    {name: "Tiffeney Rambo", location: "Culver City", description: "I love to run, so here is my favorite track workout.", reps: 14, duration: "60 min", image: "https://elementsmassage.com/files/frontend/original/Best-Exercises-Stretches-Runners.jpg"},
    {name: "Adam Oliveras", location: "Malibu", description: "I am lifting heavier than ever after this squat and lunge combo workout.", reps: 20, duration: "45 min", image: "https://prod-academy-wp-content-uploads.s3.amazonaws.com/2014/09/EXV_BB_Front-Squat.jpg"},
    {name: "David Suarez", location: "Sherman Oakes", description: "I love long walks on the beach!", reps: 0, duration: "60 min", image: "https://s3.envato.com/files/22518658/man%20walks%20on%20the%20beach%20at%20sunset.jpg"}
]
Workout.delete_all

User.first.workouts.create(workouts)
