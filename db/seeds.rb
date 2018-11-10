# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.upto(10) do |n|
	user = User.create(
	  name: Faker::Name.name,
	  email: "user#{n}@gmail.com",
	  password: "password",
	  password_confirmation: "password"
	)
	user.save
	printf("#{n}/10 Users \r")
end