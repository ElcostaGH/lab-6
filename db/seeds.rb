#Seeds for User

user1 = User.create!(email: "jose@costa.com", first_name: "Jose", last_name: "Costa", password: "123123")
puts "User 1 created: #{user1.inspect}"
user2 = User.create!(email: "consu@lemp.com", first_name: "Consuelo", last_name: "Lemp", password: "123123")
puts "User 1 created: #{user2.inspect}"
user3 = User.create!(email: "andres@howard.com", first_name: "Andres", last_name: "Howard", password: "123123")
puts "User 1 created: #{user3.inspect}"
user4 = User.create!(email: "matias@recabarren.com", first_name: "Matias", last_name: "Recabarren", password: "123123")
puts "User 1 created: #{user4.inspect}"
user5 = User.create!(email: "claudio@telha.com", first_name: "Claudio", last_name: "Telha", password: "123123")
puts "User 1 created: #{user5.inspect}"
user6 = User.create!(email: "enrique@spierre.com", first_name: "Enrique", last_name: "Saint-Pierre", password: "123123")
puts "User 1 created: #{user6.inspect}"
user7 = User.create!(email: "milena@bonacic.com", first_name: "Milena", last_name: "Bonacic", password: "123123")
puts "User 1 created: #{user7.inspect}"
user8 = User.create!(email: "pilar@gazmuri.com", first_name: "Pilar", last_name: "Gazmuri", password: "123123")
puts "User 1 created: #{user8.inspect}"
user9 = User.create!(email: "pamela@bustamante.com", first_name: "Pamela", last_name: "Bustamante", password: "123123")
puts "User 1 created: #{user9.inspect}"
user10 = User.create!(email: "daniel@escaff.com", first_name: "Daniel", last_name: "Escaff", password: "123123")
puts "User 1 created: #{user10.inspect}"

#Seeds for Post
puts "Creating post for user: #{user1.email}"
post1= Post.create!(user: user1, author: user1.email, title: "Hola", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec sed odio dui. Donec sed odio dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", published: 1)
puts "Post created: #{post1.inspect}"
post2= Post.create!(user: user1, author: user1.email, title: "Universidad", content: "Estoy estudiando en la universidad de los Andes, una de las mejores universidades del país. Me encanta la vida universitaria, hay siempre algo que hacer, alguien con quien hablar, algún lugar al que ir. La universidad es un lugar donde se aprende mucho, no solo en el aula, sino también en la vida diaria.", published: 1)

post3= Post.create!(user: user1, author: user1.email, title: "Ingenieria", content: "Estoy estudiando ingeniería civil industrial, una carrera muy demandante, pero también muy gratificante. Me gusta la forma en que se combinan la teoría y la práctica para resolver problemas complejos. La ingeniería es un campo en constante evolución, siempre hay algo nuevo que aprender, algún problema que resolver.", published: 1)

post4= Post.create!(user: user1, author: user1.email, title: "Concentracion", content: "Estoy en la concentración de desarrollo web, un campo que me apasiona. Me gusta la forma en que se puede crear algo desde cero, algo que puede ser utilizado por miles de personas. La concentración es un lugar donde se aprende mucho, no solo sobre programación, sino también sobre diseño, usabilidad y experiencia del usuario.", published: 1)

post5= Post.create!(user: user1, author: user1.email, title: "Gustos musicales", content: "Me gusta mucho el metal y el rock, géneros que me permiten expresar mis emociones de manera intensa. La música es un parte importante de mi vida, siempre estoy escuchando algo nuevo, descubriendo bandas y artistas que me gustan. La música es un lenguaje universal, puede unir a las personas de manera que nada más puede.", published: 1)

post6= Post.create!(user: user1, author: user1.email, title: "Gaming", content: "Me gusta mucho jugar videojuegos, es una forma de relajarme y divertirme. Me gustan juegos de todo tipo, desde juegos de estrategia hasta juegos de acción. La industria de los videojuegos es muy grande y en constante evolución, siempre hay algo nuevo que jugar, algún juego que descubrir.", published: 1)

post7= Post.create!(user: user1, author: user1.email, title: "Perros", content: "Tengo 3 perros, Otto, Emma y Chewy, son mis mejores amigos. Me encanta la forma en que siempre están ahí para mí, siempre dispuestos a jugar o simplemente a estar cerca. Los perros son animales increíbles, pueden enseñarnos mucho sobre la lealtad y el amor incondicional.", published: 1)

post8= Post.create!(user: user1, author: user1.email, title: "Guitarra", content: "Tengo 6 guitarras, cada una con su propia personalidad y sonido. Me gusta tocar la guitarra, es una forma de expresarme de manera creativa. La guitarra es un instrumento versátil, se puede tocar en muchos estilos diferentes, desde el rock hasta el jazz.", published: 1)

post9= Post.create!(user: user1, author: user1.email, title: "Estudiar", content: "A veces estudio mucho, es una forma de mejorar mis habilidades y conocimientos. Me gusta aprender nuevas cosas, descubrir conceptos y teorías que no conocía. El estudio es un proceso continuo, siempre hay algo nuevo que aprender, algún tema que profundizar.", published: 1)

post10= Post.create!(user: user1, author: user1.email, title: "Calculo", content: "Me gusta mucho integrar, es una forma de resolver problemas complejos de manera elegante. La integración es un concepto fundamental en el cálculo, permite resolver problemas que de otra manera serían imposibles de resolver. Me gusta la forma en que la integración se puede aplicar a muchos campos diferentes, desde la física hasta", published: 1)

#Seeds for Comment
puts "Creating comment for post: #{post1.id} by user: #{user1.email}"
comment1 = Comment.create!(user: user1, author: user1.email, content: "Hola buenos dias tambien", post: post1)
puts "Comment created: #{comment1.inspect}"
comment2 = Comment.create!(user: user1, author: user1.email, content: "Que bueno, yo tambien soy de la uandes", post: post2)
comment3 = Comment.create!(user: user1, author: user1.email, content: "Wow, yo tambien estudio industrial", post: post3)
comment4 = Comment.create!(user: user1, author: user1.email, content: "Yo casi quedo en la concentracion de fluid mechanics", post: post4)
comment5 = Comment.create!(user: user1, author: user1.email, content: "Mis grupos favoritos son Metallica, System of a Down y Megadeth", post: post5)
comment6 = Comment.create!(user: user1, author: user1.email, content: "Me encantan mis perros, y echo de menos a los que ya no estan, Jaguer y Noah", post: post7)
comment7 = Comment.create!(user: user1, author: user1.email, content: "Me encantaria tener una Explorer o una Flying V", post: post8)
comment8 = Comment.create!(user: user1, author: user1.email, content: "A veces estudio poco", post: post9)
comment9 = Comment.create!(user: user1, author: user1.email, content: "Pero enseño estadistica asi que ya no integro :(", post: post10)
comment10 = Comment.create!(user: user1, author: user1.email, content: "Creo que me falto un comentario", post: post6)