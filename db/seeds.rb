	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create!({:email => "admin@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => true })

last_user = User.create!({:email => "juan@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false})
last_user.build_teacher({:name => "Juan", :last_name => "Perez", :mothers_last_name => "Perez", :perfil => "Ingeniero Mecanico"})
last_user.save
last_user = User.create!({:email => "pedro@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false})
last_user.build_teacher({:name => "pedro", :last_name => "Sanchez", :mothers_last_name => "Perez", :perfil => "Ingeniero Mecanico"})
last_user.save
last_user = User.create!({:email => "paco@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false })
last_user.build_teacher({:name => "paco", :last_name => "Cruz", :mothers_last_name => "Galindo", :perfil => "Ingeniero Mecanico"})
last_user.save
last_user = User.create!({:email => "maria@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false })
last_user.build_teacher({:name => "maria", :last_name => "Perez", :mothers_last_name => "Tellez", :perfil => "Ingeniero Mecanico"})
last_user.save
last_user = User.create!({:email => "adan@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false })
last_user.build_teacher({:name => "adan", :last_name => "Sanchez", :mothers_last_name => "Anduaga", :perfil => "Ingeniero Mecanico"})
last_user.save
last_user = User.create!({:email => "oscar@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false })
last_user.build_teacher({:name => "oscar", :last_name => "Perez", :mothers_last_name => "Perez", :perfil => "Ingeniero Agronomo"})
last_user.save
last_user = User.create!({:email => "edna@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false})
last_user.build_teacher({:name => "edna", :last_name => "Gonzalez", :mothers_last_name => "Aminoacido", :perfil => "Educador Español Matematicas"})
last_user.save
last_user = User.create!({:email => "sofia@calyfi.com", :password => "calyfi", :password_confirmation => "calyfi", :admin_role => false })
last_user.build_teacher({:name => "sofia", :last_name => "Gordillo", :mothers_last_name => "Gallegos", :perfil => "Ingeniero Sistemcas"})
last_user.save

# Groups creation
['A','B','C','D','E','F'].each do |group|
  Group.create!(name: group)
end

# Especialidades
['Informatica', 'Agronomo', 'Secretariado', 'Charro'].each do |specialty|
  Specialty.create!(name: specialty)
end

# Creation of Study Cycle
StudyCycle.create!(start_at: Date.new(2017,1,14), end_at: Date.new(2017,6,30))

# Curriculum creation
Specialty.all.each do  |specialty|
  Curriculum.create!(name: "Especialidad en #{specialty.name}", specialty_id: specialty.id, study_cycle_id: StudyCycle.first.id)
end

150.times do |counter|
  Student.create!(name: Faker::Name.first_name, last_name: Faker::Name.last_name, mothers_last_name: Faker::Name.last_name, address: Faker::Address.street_address,
                  suburb: Faker::Address.city_prefix, city: Faker::Address.city, state: Faker::Address.state, postal_code: Faker::Address.postcode,
                  birthdate: Faker::Date.birthday(15, 20), sex: ['Masculino', 'Femenino'][rand(0..1)], group_id: Group.all.sample.id, curriculum_id: rand(1..Curriculum.all.count.to_i),
                  study_cycle_id: StudyCycle.last.id, semester: rand(1..6), is_graduated: false, enrollment: Faker::Number.number(10))
end


[
	[1, 'Se autodetermina y cuida de sí'],
	[2, 'Se expresa y comunica'],
	[3, 'Piensa crítica y reflexivamente'],
	[4, 'Aprende de forma autónoma'],
	[5, 'Trabaja en forma colaborativa'],
	[6, 'Participa con responsabilidad en la sociedad']
].each do |category|
	CompetitionCategory.create!(id: category[0], number: category[0],  name: category[1])
end

# number, name, and category references
[
	[1, 'Se conoce y valora a sí mismo y aborda problemas y retos teniendo en cuenta los objetivos que persigue.', 1],
	[2, 'Es sensible al arte y participa en la apreciación e interpretación de sus expresiones en distintos géneros.', 1],
	[3, 'Elige y practica estilos de vida saludables.', 1],
	[4, 'Escucha, interpreta y emite mensajes pertinentes en distintos contextos mediante la utilización de medios, códigos y herramientas apropiados.', 2],
	[5, 'Desarrolla innovaciones y propone soluciones a problemas a partir de métodos establecidos.', 	3],
	[6, 'ustenta una postura personal sobre temas de interés y relevancia general, considerando otros puntos de vista de manera crítica y reflexiva.', 3],
	[7, 'Aprende por iniciativa e interés propio a lo largo de la vida.', 4],
	[8, 'Participa y colabora de manera efectiva en equipos diversos.', 5],
	[9, 'Participa con una conciencia cívica y ética en la vida de su comunidad, región, México y el mundo.', 6],
	[10, 'Mantiene una actitud respetuosa hacia la interculturalidad y la diversidad de creencias, valores, ideas y prácticas sociales.', 6],
	[11, 'Contribuye al desarrollo sustentable de manera crítica, con acciones responsables.', 6],

].each do |item|
	CompetitionCategory.find(item[2]).generic_competences.create!(id: item[0],number: item[0], name: item[1])
end

#number, description, generic_competence refrences
[
	[1, 'Enfrenta las dificultades que se le presentan y es consciente de sus valores, fortalezas y debilidades.', 1],
	[2, 'Identifica sus emociones, las maneja de manera constructiva y reconoce la necesidad de solicitar apoyo ante una situación que lo rebase.', 1],
	[3, 'Elige alternativas y cursos de acción con base en criterios sustentados y en el marco de un proyecto de vida.', 1],
	[4, 'Analiza críticamente los factores que influyen en su toma de decisiones.', 1],
	[5, 'Asume las consecuencias de sus comportamientos y decisiones.', 1],
	[6, 'Administra los recursos disponibles teniendo en cuenta las restricciones para el logro de sus metas.', 1],
	[7, 'Valora el arte como manifestación de la belleza y expresión de ideas, sensaciones y emociones.', 2],
	[8, 'Experimenta el arte como un hecho histórico compartido que permite la comunicación entre individuos y culturas en el tiempo y el espacio, a la vez que desarrolla un sentido de identidad.', 2],
	[9, 'Participa en prácticas relacionadas con el arte.', 2],
	[10, 'Reconoce la actividad física como un medio para su desarrollo físico, mental y social.', 3],
	[11, 'Toma decisiones a partir de la valoración de las consecuencias de distintos hábitos de consumo y conductas de riesgo.', 3],
	[12, 'Cultiva relaciones interpersonales que contribuyen a su desarrollo humano y el de quienes lo rodean.', 3],
	[13, 'Expresa ideas y conceptos mediante representaciones lingüísticas, matemáticas o gráficas.', 4],
	[14, 'Aplica distintas estrategias comunicativas según quienes sean sus interlocutores, el contexto en el que se encuentra y los objetivos que persigue.', 4],
	[15, 'Identifica las ideas clave en un texto o discurso oral e infiere conclusiones a partir de ellas.', 4],
	[16, 'Se comunica en una segunda lengua en situaciones cotidianas.', 4],
	[17, 'Maneja las tecnologías de la información y la comunicación para obtener información y expresar ideas. ', 4],
	[18, 'Sigue instrucciones y procedimientos de manera reflexiva, comprendiendo como cada uno de sus pasos contribuye al alcance de un objetivo.', 5],
	[19, 'Ordena información de acuerdo a categorías, jerarquías y relaciones.', 5],
	[20, 'Identifica los sistemas y reglas o principios medulares que subyacen a una serie de fenómenos.', 5],
	[21, 'Construye hipótesis y diseña y aplica modelos para probar su validez.', 5],
	[22, 'Sintetiza evidencias obtenidas mediante la experimentación para producir conclusiones y formular nuevas preguntas.', 5],
	[23, 'Utiliza las tecnologías de la información y comunicación para procesar e interpretar información.', 5],
	[24, 'Elige las fuentes de información más relevantes para un propósito específico y discrimina entre ellas de acuerdo a su relevancia y confiabilidad.', 6],
	[25, 'Evalúa argumentos y opiniones e identifica prejuicios y falacias.', 6],
	[26, 'Reconoce los propios prejuicios, modifica sus puntos de vista al conocer nuevas evidencias, e integra nuevos conocimientos y perspectivas al acervo con el que cuenta.', 6],
	[27, 'Estructura ideas y argumentos de manera clara, coherente y sintética.', 6],
	[28, 'Define metas y da seguimiento a sus procesos de construcción de conocimiento.', 7],
	[29, 'Identifica las actividades que le resultan de menor y mayor interés y dificultad, reconociendo y controlando sus reacciones frente a retos y obstáculos.', 7],
	[30, 'Articula saberes de diversos campos y establece relaciones entre ellos y su vida cotidiana.', 7],
	[31, 'Propone maneras de solucionar un problema o desarrollar un proyecto en equipo, definiendo un curso de acción con pasos específicos.', 8],
	[32, 'Aporta puntos de vista con apertura y considera los de otras personas de manera reflexiva.', 8],
	[33, 'Asume una actitud constructiva, congruente con los conocimientos y habilidades con los que cuenta dentro de distintos equipos de trabajo.', 8],
	[34, 'Privilegia el diálogo como mecanismo para la solución de conflictos.', 9],
	[35, 'Toma decisiones a fin de contribuir a la equidad, bienestar y desarrollo democrático de la sociedad.', 9],
	[36, 'Conoce sus derechos y obligaciones como mexicano y miembro de distintas comunidades e instituciones, y reconoce el valor de la participación como herramienta para ejercerlos.', 9],
	[37, 'Contribuye a alcanzar un equilibrio entre el interés y bienestar individual y el interés general de la sociedad.', 9],
	[38, 'Actúa de manera propositiva frente a fenómenos de la sociedad y se mantiene informado.', 9],
	[39, 'Advierte que los fenómenos que se desarrollan en los ámbitos local, nacional e internacional ocurren dentro de un contexto global interdependiente.', 9],
	[40, 'Reconoce que la diversidad tiene lugar en un espacio democrático de igualdad de dignidad y derechos de todas las personas, y rechaza toda forma de discriminación. ', 10],
	[41, 'Dialoga y aprende de personas con distintos puntos de vista y tradiciones culturales mediante la ubicación de sus propias circunstancias en un contexto más amplio.', 10],
	[42, 'Asume que el respeto de las diferencias es el principio de integración y convivencia en los contextos local, nacional e internacional.', 10],
	[43, 'Asume una actitud que favorece la solución de problemas ambientales en los ámbitos local, nacional e internacional.', 11],
	[44, 'Reconoce y comprende las implicaciones biológicas, económicas, políticas y sociales del daño ambiental en un contexto global interdependiente.', 11],
	[45, 'Contribuye al alcance de un equilibrio entre los intereses de corto y largo plazo con relación al ambiente.', 11]
].each do |item|
	GenericCompetence.find(item[2]).generic_competence_attributes.create!(id: item[0], number: item[0], description: item[1])
end