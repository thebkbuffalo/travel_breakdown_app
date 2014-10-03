# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Event.destroy_all
Role.destroy_all

u1 = User.create(name: "Gray",  image: "http://justinjackson.ca/wp-content/uploads/2008/08/justin-jackson-black-and-white-canada-profile.jpg", email: "gray.reinhard@gmail.com", admin: false, phone_number: "536-345-3456", password: "good guy")
u2 = User.create(name: "Evan",  image: "http://www.uidaho.edu/~/media/Images/orgs/enrollment-mgmt/Admissions/2012/cezar-admissions-profile.ashx", email: "evan@fakegmail.com", admin: false, phone_number: "536-345-3456", password: "good guy")
u3 = User.create(name: "Ariel", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-EElE6Vip6mQHP4Wned4VXxhyUIlMyv3aHjwgEujK0s0Z3UO0", email: "ariel@fakegmail.com", admin: false, phone_number: "536-345-3456", password: "good gal")
u4 = User.create(name: "Aaron", image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSReCMdBV28yy7H0R3PmS1waCPIzRUQOdNtEoftBaeH7zychCyz", email: "aaron@fakegmail.com", admin: false,  phone_number: "536-345-3456", password: "good guy")
u5 = User.create(name: "Erica", image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSGwe4QW8OUlUaf06TO7pf8LH46cLJRGDBRbmWfba5VMLDeh6ZUmg", email: "erica@fakegmail.com", admin: true,  phone_number: "536-345-3456", password: "good gal")

e1 = Event.create(name: "Boat", 		start_date: DateTime.new(2015,9,1,17),  end_date: DateTime.new(2015,9,8,17),  location: "Bahamas", image: "https://www.peaceboat.com/v/vspfiles/assets/images/boat%20horz%202.gif")
e2 = Event.create(name: "Bachelorette", start_date: DateTime.new(2014,12,1,17), end_date: DateTime.new(2014,12,4,17), location: "Vegas", image: "http://theheadliner.com/wp-content/uploads/2014/02/bachelorette-party-editorial-heels-at-Andaz-Hotel-San-Diego-1.jpg")
e3 = Event.create(name: "Summer Share", start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,8,4,17),  location: "East Hampton", image: "http://cdn.c.photoshelter.com/img-get/I0000ROqaL_wF3iY/s/750/600/beach-house-001.jpg")
e4 = Event.create(name: "Bonnaroo", 	start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,5,5,17),  location: "Tennessee", image: "http://festivalfling.com/wp-content/uploads/2012/04/bonnaroo-crowd.jpeg")

Role.create(event_id: e1.id, user_id: u1.id, start_date: e1.start_date, end_date: e1.end_date, permission: "owner")
Role.create(event_id: e1.id, user_id: u2.id, start_date: e1.start_date, end_date: e1.end_date, permission: "friend")
Role.create(event_id: e1.id, user_id: u3.id, start_date: e1.start_date, end_date: e1.end_date, permission: "friend")
Role.create(event_id: e1.id, user_id: u4.id, start_date: e1.start_date, end_date: e1.end_date, permission: "friend")
Role.create(event_id: e1.id, user_id: u5.id, start_date: e1.start_date, end_date: e1.end_date, permission: "friend")

Role.create(event_id: e2.id, user_id: u1.id, start_date: e2.start_date, end_date: e2.end_date, permission: "friend")
Role.create(event_id: e2.id, user_id: u2.id, start_date: e2.start_date, end_date: e2.end_date, permission: "owner")
Role.create(event_id: e2.id, user_id: u3.id, start_date: e2.start_date, end_date: e2.end_date, permission: "friend")
Role.create(event_id: e2.id, user_id: u4.id, start_date: e2.start_date, end_date: e2.end_date, permission: "friend")
Role.create(event_id: e2.id, user_id: u5.id, start_date: e2.start_date, end_date: e2.end_date, permission: "friend")

Role.create(event_id: e3.id, user_id: u1.id, start_date: e3.start_date, end_date: e3.end_date, permission: "friend")
Role.create(event_id: e3.id, user_id: u2.id, start_date: e3.start_date, end_date: e3.end_date, permission: "friend")
Role.create(event_id: e3.id, user_id: u3.id, start_date: e3.start_date, end_date: e3.end_date, permission: "owner")
Role.create(event_id: e3.id, user_id: u4.id, start_date: e3.start_date, end_date: e3.end_date, permission: "friend")
Role.create(event_id: e3.id, user_id: u5.id, start_date: e3.start_date, end_date: e3.end_date, permission: "friend")

Role.create(event_id: e4.id, user_id: u1.id, start_date: e4.start_date, end_date: e4.end_date, permission: "friend")
Role.create(event_id: e4.id, user_id: u2.id, start_date: e4.start_date, end_date: e4.end_date, permission: "friend")
Role.create(event_id: e4.id, user_id: u3.id, start_date: e4.start_date, end_date: e4.end_date, permission: "friend")
Role.create(event_id: e4.id, user_id: u4.id, start_date: e4.start_date, end_date: e4.end_date, permission: "owner")
Role.create(event_id: e4.id, user_id: u5.id, start_date: e4.start_date, end_date: e4.end_date, permission: "friend")
