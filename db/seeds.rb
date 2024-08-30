# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#Seeds for User
User.create(email: "jicosta@miuandes.cl", first_name: "jose", last_name: "costa")
User.create(email: "calemp@miuandes.cl", first_name: "consuelo", last_name: "lemp")
User.create(email: "ahoward@miuandes.cl", first_name: "andres", last_name: "howard")
User.create(email: "mrecabarren@miuandes.cl", first_name: "matias", last_name: "recabarren")
User.create(email: "catelha@miuandes.cl", first_name: "claudio", last_name: "telha")
User.create(email: "ehsaintpierre@miuandes.cl", first_name: "enrique", last_name: "saint-pierre")
User.create(email: "mbonacic@miuandes.cl", first_name: "milena", last_name: "bonacic")
User.create(email: "mpgazmuri@miuandes.cl", first_name: "pilar", last_name: "gazmuri")
User.create(email: "pabustamente@miuandes.cl", first_name: "pamela", last_name: "bustamante")
User.create(email: "descaff@miuandes.cl", first_name: "daniel", last_name: "escaff")

#Seeds for Post
Post.create(author: "Elcosta", title: "hola", content: "buenos dias mundo", published: 2024)
Post.create(author: "Elcosta", title: "universidad", content: "estoy en la universidad de los andes", published: 2024)
Post.create(author: "Elcosta", title: "ingenieria", content: "estudio ingenieria civil industrial", published: 2024)
Post.create(author: "Elcosta", title: "concentracion", content: "estoy en la concentracion de desarrollo web", published: 2024)
Post.create(author: "Elcosta", title: "gustos musicales", content: "me gusta mucho el metal y el rock", published: 2024)
Post.create(author: "Elcosta", title: "gaming", content: "me gusta mucho jugar videojuegos", published: 2024)
Post.create(author: "Elcosta", title: "perros", content: "tengo 3 perros, Otto, Emma y Chewy", published: 2024)
Post.create(author: "Elcosta", title: "guitarra", content: "Tengo 6 guitarras: Una Ibanez Jem, una Epiphone Les Paul, una Gibson U2, una Fender Telecaster, una Takemine electroacustica y una Walden electroacustica", published: 2024)
Post.create(author: "Elcosta", title: "estudiar", content: "A veces estudio mucho", published: 2024)
Post.create(author: "Elcosta", title: "calculo", content: "Me gusta mucho integrar", published: 2024)

#Seeds for Comment

Comment.create(author: "Elcosta", content: "hola buenos dias tambien")
Comment.create(author: "Elcosta", content: "que bueno, yo tambien soy de la uandes")
Comment.create(author: "Elcosta", content: "wow, yo tambien estudio industrial")
Comment.create(author: "Elcosta", content: "yo casi quedo en la concentracion de fluid mechanics")
Comment.create(author: "Elcosta", content: "mis grupos favoritos son Metallica, System of a Down y Megadeth")
Comment.create(author: "Elcosta", content: "me encantan mis perros, y echo de menos a los que ya no estan, Jaguer y Noah")
Comment.create(author: "Elcosta", content: "me encantaria tener una Explorer o una Flying V")
Comment.create(author: "Elcosta", content: "A veces estudio poco")
Comment.create(author: "Elcosta", content: "pero enseño estadistica asi que ya no integro :(")
Comment.create(author: "Elcosta", content: "creo que me falto un comentario")