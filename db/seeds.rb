# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create(name: "Gray", image: "http://justinjackson.ca/wp-content/uploads/2008/08/justin-jackson-black-and-white-canada-profile.jpg", email: "gray.reinhard@gmail.com", admin: false, passward: "gray")
u2 = User.create(name: "Evan", image: "http://www.uidaho.edu/~/media/Images/orgs/enrollment-mgmt/Admissions/2012/cezar-admissions-profile.ashx", email: "evan@fakegmail.com", admin: false, passward: "evan")
u3 = User.create(name: "Ariel", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-EElE6Vip6mQHP4Wned4VXxhyUIlMyv3aHjwgEujK0s0Z3UO0", email: "ariel@fakegmail.com", admin: false, passward: "ariel")
u3 = User.create(name: "Aaron", image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSReCMdBV28yy7H0R3PmS1waCPIzRUQOdNtEoftBaeH7zychCyz", email: "aaron@fakegmail.com", admin: false, passward: "aaron")
u3 = User.create(name: "Erica", image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSGwe4QW8OUlUaf06TO7pf8LH46cLJRGDBRbmWfba5VMLDeh6ZUmg", email: "erica@fakegmail.com", admin: false, passward: "erica")

e1 = Event.create(name: "Boat", start_date: DateTime.new(2015,9,1,17), end_date: DateTime.new(2015,9,8,17), location: "Bahamas")
e2 = Event.create(name: "Bachelorette", start_date: DateTime.new(2014,12,1,17), end_date: DateTime.new(2014,12,4,17), location: "Vegas")
e3 = Event.create(name: "Summer Share", start_date: DateTime.new(2015,5,1,12), end_date: DateTime.new(2015,8,4,17), location: "East Hampton")
e4 = Event.create(name: "Bonnaroo", start_date: DateTime.new(2015,5,1,12), end_date: DateTime.new(2015,5,5,17), location: "Tennessee")
