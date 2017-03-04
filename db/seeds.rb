# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create(
	:username => "admin", 
	:password => "admin", 
	:superuser => true,
	:first_name => "System",
	:last_name => "Administrator",
	:section => "section",
	:roll_number => 9999,
	:year => 9999,
	:email => "xyz",
	:user_mobile => "user_mobile",
	:father => "father_name",
	:father_occupation => "father_occupation",
	:father_mobile => "father_mobile",
	:mother => "mother_name",
	:mother_occupation => "mother_occupation",
	:mother_mobile => "mother_mobile",
	:interests => "interests",
	:goals => "goals",
	:skills => "skills",
	:strengths => "strengths",
	:weaknesses => "weaknesses"
	)
