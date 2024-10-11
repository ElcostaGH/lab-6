#Seeds for User


user1 = User.create!(email: "jose@costa.com", first_name: "Jose", last_name: "Costa")
user2 = User.create!(email: "consu@lemp.com", first_name: "Consuelo", last_name: "Lemp")
user3 = User.create!(email: "andres@howard.com", first_name: "Andres", last_name: "Howard")
user4 = User.create!(email: "matias@recabarren.com", first_name: "Matias", last_name: "Recabarren")
user5 = User.create!(email: "claudio@telha.com", first_name: "Claudio", last_name: "Telha")
user6 = User.create!(email: "enrique@spierre.com", first_name: "Enrique", last_name: "Saint-Pierre")
user7 = User.create!(email: "milena@bonacic.com", first_name: "Milena", last_name: "Bonacic")
user8 = User.create!(email: "pilar@gazmuri.com", first_name: "Pilar", last_name: "Gazmuri")
user9 = User.create!(email: "pamela@bustamante.com", first_name: "Pamela", last_name: "Bustamante")
user10 = User.create!(email: "daniel@escaff.com", first_name: "Daniel", last_name: "Escaff")

#Seeds for Post
Post.create!(user: user1, author: user1.email, title: "Hola", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec sed odio dui. Donec sed odio dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Universidad", content: "Estoy estudiando en la universidad de los Andes, una de las mejores universidades del país. Me encanta la vida universitaria, hay siempre algo que hacer, alguien con quien hablar, algún lugar al que ir. La universidad es un lugar donde se aprende mucho, no solo en el aula, sino también en la vida diaria.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Ingenieria", content: "Estoy estudiando ingeniería civil industrial, una carrera muy demandante, pero también muy gratificante. Me gusta la forma en que se combinan la teoría y la práctica para resolver problemas complejos. La ingeniería es un campo en constante evolución, siempre hay algo nuevo que aprender, algún problema que resolver.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Concentracion", content: "Estoy en la concentración de desarrollo web, un campo que me apasiona. Me gusta la forma en que se puede crear algo desde cero, algo que puede ser utilizado por miles de personas. La concentración es un lugar donde se aprende mucho, no solo sobre programación, sino también sobre diseño, usabilidad y experiencia del usuario.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Gustos musicales", content: "Me gusta mucho el metal y el rock, géneros que me permiten expresar mis emociones de manera intensa. La música es un parte importante de mi vida, siempre estoy escuchando algo nuevo, descubriendo bandas y artistas que me gustan. La música es un lenguaje universal, puede unir a las personas de manera que nada más puede.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Gaming", content: "Me gusta mucho jugar videojuegos, es una forma de relajarme y divertirme. Me gustan juegos de todo tipo, desde juegos de estrategia hasta juegos de acción. La industria de los videojuegos es muy grande y en constante evolución, siempre hay algo nuevo que jugar, algún juego que descubrir.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Perros", content: "Tengo 3 perros, Otto, Emma y Chewy, son mis mejores amigos. Me encanta la forma en que siempre están ahí para mí, siempre dispuestos a jugar o simplemente a estar cerca. Los perros son animales increíbles, pueden enseñarnos mucho sobre la lealtad y el amor incondicional.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Guitarra", content: "Tengo 6 guitarras, cada una con su propia personalidad y sonido. Me gusta tocar la guitarra, es una forma de expresarme de manera creativa. La guitarra es un instrumento versátil, se puede tocar en muchos estilos diferentes, desde el rock hasta el jazz.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Estudiar", content: "A veces estudio mucho, es una forma de mejorar mis habilidades y conocimientos. Me gusta aprender nuevas cosas, descubrir conceptos y teorías que no conocía. El estudio es un proceso continuo, siempre hay algo nuevo que aprender, algún tema que profundizar.", published: 1)
Post.create!(user: user1, author: user1.email, title: "Calculo", content: "Me gusta mucho integrar, es una forma de resolver problemas complejos de manera elegante. La integración es un concepto fundamental en el cálculo, permite resolver problemas que de otra manera serían imposibles de resolver. Me gusta la forma en que la integración se puede aplicar a muchos campos diferentes, desde la física hasta", published: 1)
#Seeds for Comment
Comment.create!(author: user1.email, content: "Hola buenos dias tambien", post_id: 1)
Comment.create!(author: user1.email, content: "Que bueno, yo tambien soy de la uandes", post_id: 2)
Comment.create!(author: user1.email, content: "Wow, yo tambien estudio industrial", post_id: 3)
Comment.create!(author: user1.email, content: "Yo casi quedo en la concentracion de fluid mechanics", post_id: 4)
Comment.create!(author: user1.email, content: "Mis grupos favoritos son Metallica, System of a Down y Megadeth", post_id: 5)
Comment.create!(author: user1.email, content: "Me encantan mis perros, y echo de menos a los que ya no estan, Jaguer y Noah", post_id: 7)
Comment.create!(author: user1.email, content: "Me encantaria tener una Explorer o una Flying V", post_id: 8)
Comment.create!(author: user1.email, content: "A veces estudio poco", post_id: 9)
Comment.create!(author: user1.email, content: "Pero enseño estadistica asi que ya no integro :(", post_id: 10)
Comment.create!(author: user1.email, content: "Creo que me falto un comentario", post_id: 6)