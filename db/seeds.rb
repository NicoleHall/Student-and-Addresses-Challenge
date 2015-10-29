# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
nicole = Student.create(first_name: "nicole", last_name: "hall")
geoff = Student.create(first_name: "geoff", last_name: "schorkopf", is_alumnus: true)
Address.create(is_current: true, street: "123 Fake St", city: "Denver", state: "CO", student_id: nicole.id)
Address.create(is_current: true, street: "123 Fake St", city: "Altlanta", state: "GA", student_id: geoff.id)
