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
  Curriculum.create!(name: "Especialidad en #{specialty}", specialty_id: specialty.id, study_cycle_id: StudyCycle.first.id)
end

150.times do |counter|
  Student.create!(name: Faker::Name.first_name, last_name: Faker::Name.last_name, mothers_last_name: Faker::Name.last_name, address: Faker::Address.street_address,
                  suburb: Faker::Address.city_prefix, city: Faker::Address.city, state: Faker::Address.state, postal_code: Faker::Address.postcode,
                  birthdate: Faker::Date.birthday(15, 20), sex: ['Masculino', 'Femenino'][rand(0..1)], group_id: Group.all.sample.id, curriculum_id: rand(1..Curriculum.all.count.to_i),
                  study_cycle_id: StudyCycle.last.id, semester: rand(1..6), is_graduated: false, enrollment: Faker::Number.number(10))
end
