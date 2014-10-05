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
Expense.destroy_all

u1 = User.create(name: "Gray",  image: "http://img1.wikia.nocookie.net/__cb20091227043444/uncyclopedia/images/thumb/d/dd/Santa_Sheen.png/165px-Santa_Sheen.png", email: "gray.reinhard@gmail.com", admin: false, phone_number: "536-345-3456", password: "good guy")
u2 = User.create(name: "Evan",  image: "http://media-cache-ec0.pinimg.com/236x/56/b8/80/56b880cbf72d7afc96944c6629629cc7.jpg", email: "evan@fakegmail.com", admin: false, phone_number: "536-345-3456", password: "good guy")
u3 = User.create(name: "Ariel", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-EElE6Vip6mQHP4Wned4VXxhyUIlMyv3aHjwgEujK0s0Z3UO0", email: "ariel@fakegmail.com", admin: false, phone_number: "536-345-3456", password: "good gal")
u4 = User.create(name: "Aaron", image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSReCMdBV28yy7H0R3PmS1waCPIzRUQOdNtEoftBaeH7zychCyz", email: "aaron@fakegmail.com", admin: false,  phone_number: "536-345-3456", password: "good guy")
u5 = User.create(name: "Erica", image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSGwe4QW8OUlUaf06TO7pf8LH46cLJRGDBRbmWfba5VMLDeh6ZUmg", email: "erica@fakegmail.com", admin: true,  phone_number: "536-345-3456", password: "good gal")

e1 = Event.create(name: "Boat", 		start_date: DateTime.new(2015,9,1,17),  end_date: DateTime.new(2015,9,8,17),  location: "Bahamas", image: "https://www.peaceboat.com/v/vspfiles/assets/images/boat%20horz%202.gif")
e2 = Event.create(name: "Bachelorette", start_date: DateTime.new(2014,12,1,17), end_date: DateTime.new(2014,12,4,17), location: "Vegas", image: "http://theheadliner.com/wp-content/uploads/2014/02/bachelorette-party-editorial-heels-at-Andaz-Hotel-San-Diego-1.jpg")
e3 = Event.create(name: "Summer Share", start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,8,4,17),  location: "East Hampton", image: "http://cdn.c.photoshelter.com/img-get/I0000ROqaL_wF3iY/s/750/600/beach-house-001.jpg")
e4 = Event.create(name: "Bonnaroo", 	start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,5,5,17),  location: "Tennessee", image: "http://festivalfling.com/wp-content/uploads/2012/04/bonnaroo-crowd.jpeg")


Role.create(event_id: e1.id, user_id: u1.id, start_date: e1.start_date, 	 end_date: e1.end_date, 	 permission: "owner" )
Role.create(event_id: e1.id, user_id: u2.id, start_date: e1.start_date, 	 end_date: e1.end_date - 1,  permission: "friend")
Role.create(event_id: e1.id, user_id: u3.id, start_date: e1.start_date + 4,  end_date: e1.end_date, 	 permission: "friend")
Role.create(event_id: e1.id, user_id: u4.id, start_date: e1.start_date, 	 end_date: e1.end_date - 2,  permission: "friend")
Role.create(event_id: e1.id, user_id: u5.id, start_date: e1.start_date + 1,  end_date: e1.end_date, 	 permission: "friend")

Role.create(event_id: e2.id, user_id: u1.id, start_date: e2.start_date, 	 end_date: e2.end_date, 	 permission: "friend")
Role.create(event_id: e2.id, user_id: u2.id, start_date: e2.start_date, 	 end_date: e2.end_date - 1,  permission: "owner" )
Role.create(event_id: e2.id, user_id: u3.id, start_date: e2.start_date, 	 end_date: e2.end_date, 	 permission: "friend")
Role.create(event_id: e2.id, user_id: u4.id, start_date: e2.start_date + 2,  end_date: e2.end_date, 	 permission: "friend")
Role.create(event_id: e2.id, user_id: u5.id, start_date: e2.start_date + 2,  end_date: e2.end_date, 	 permission: "friend")

Role.create(event_id: e3.id, user_id: u1.id, start_date: e3.start_date + 10, end_date: e3.end_date, 	 permission: "friend")
Role.create(event_id: e3.id, user_id: u2.id, start_date: e3.start_date, 	 end_date: e3.end_date - 20, permission: "friend")
Role.create(event_id: e3.id, user_id: u3.id, start_date: e3.start_date + 1,  end_date: e3.end_date - 14, permission: "owner" )
Role.create(event_id: e3.id, user_id: u4.id, start_date: e3.start_date, 	 end_date: e3.end_date - 5,  permission: "friend")
Role.create(event_id: e3.id, user_id: u5.id, start_date: e3.start_date + 15, end_date: e3.end_date, 	 permission: "friend")

Role.create(event_id: e4.id, user_id: u1.id, start_date: e4.start_date, 	 end_date: e4.end_date, 	 permission: "friend")
Role.create(event_id: e4.id, user_id: u2.id, start_date: e4.start_date, 	 end_date: e4.end_date - 1,  permission: "friend")
Role.create(event_id: e4.id, user_id: u3.id, start_date: e4.start_date, 	 end_date: e4.end_date,      permission: "friend")
Role.create(event_id: e4.id, user_id: u4.id, start_date: e4.start_date, 	 end_date: e4.end_date, 	 permission: "owner" )
Role.create(event_id: e4.id, user_id: u5.id, start_date: e4.start_date + 1,  end_date: e4.end_date, 	 permission: "friend")



# Expense.create(item:"Wine", amount: "105.00", description:"Wine for everyone", start_date:DateTime.new(2015,9,1,17), end_date:DateTime.new(2015,9,3,17), calculation_type:"Boat", tag:"", approved: true, event_id: e1.id, user_id: u1.id)
# Expense.create(item:"Cheese", amount: "29.00", description:"Cheese for the wine", start_date:DateTime.new(2015,9,1,17), end_date:DateTime.new(2015,9,2,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e1.id, user_id: u1.id)
# Expense.create(item:"Wine Crackers", amount: "12.00", description:"Crackers for the cheese", start_date:DateTime.new(2015,9,1,17), end_date:DateTime.new(2015,9,8,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e1.id, user_id: u2.id)
# Expense.create(item:"Soft drinks", amount: "22.00", description:"Sodas", start_date:DateTime.new(2015,9,1,17), end_date:DateTime.new(2015,9,8,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e1.id, user_id: u3.id)
# Expense.create(item:"Bagels", amount: "15.44", description:"Breakfast Bagels", start_date:DateTime.new(2015,9,2,17), end_date:DateTime.new(2015,9,7,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e1.id, user_id: u4.id)

# Expense.create(item:"Whiskey", amount: "52.00", description:"Whiskey Bottle", start_date:DateTime.new(2014,12,2,17), end_date:DateTime.new(2014,12,3,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e2.id, user_id: u1.id)
# Expense.create(item:"Breakfast", amount: "22.00", description:"Bacon and Eggs", start_date:DateTime.new(2014,12,2,17), end_date:DateTime.new(2014,12,3,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e2.id, user_id: u1.id)
# Expense.create(item:"Decorations", amount: "52.00", description:"Event Decor", start_date:DateTime.new(2014,12,1,17), end_date:DateTime.new(2014,12,4,17), calculation_type:"Gift", tag:"", approved: true, event_id: e2.id, user_id: u2.id)
# Expense.create(item:"Jewelry", amount: "12.00", description:"Necklace", start_date:DateTime.new(2014,12,1,17), end_date:DateTime.new(2014,12,4,17), calculation_type:"Gift", tag:"", approved: true, event_id: e2.id, user_id: u2.id)
# Expense.create(item:"Watch", amount: "332.00", description:"Gold Watch Gift", start_date:DateTime.new(2014,12,1,17), end_date:DateTime.new(2014,12,4,17), calculation_type:"Gift", tag:"", approved: true, event_id: e2.id, user_id: u5.id)

# Expense.create(item:"Drinks", amount: "152.00", description:"Drinks for the evenings", start_date:DateTime.new(2015,5,1,12), end_date:DateTime.new(2015,8,4,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e3.id, user_id: u1.id)
# Expense.create(item:"Breakfast", amount: "12.00", description:"Breakfast food", start_date:DateTime.new(2015,5,1,12), end_date:DateTime.new(2015,8,4,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e3.id, user_id: u2.id)
# Expense.create(item:"Camera", amount: "1102.00", description:"DSLR Camera", start_date:DateTime.new(2015,5,1,12), end_date:DateTime.new(2015,8,4,17), calculation_type:"Gift", tag:"", approved: true, event_id: e3.id, user_id: u3.id)
# Expense.create(item:"Lunch", amount: "153.00", description:"Lunch on the third day", start_date:DateTime.new(2015,5,3,12), end_date:DateTime.new(2015,8,3,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e3.id, user_id: u1.id)

# Expense.create(item:"Breakfast", amount: "22.00", description:"Breakfast on the first day", start_date:DateTime.new(2015,5,1,12), end_date:DateTime.new(2015,8,1,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e4.id, user_id: u1.id)
# Expense.create(item:"Drinks", amount: "82.00", description:"Drinks on second night", start_date:DateTime.new(2015,5,2,12), end_date:DateTime.new(2015,8,2,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e3.id, user_id: u2.id)
# Expense.create(item:"Dinner", amount: "342.00", description:"Paid for dinner", start_date:DateTime.new(2015,5,4,12), end_date:DateTime.new(2015,8,4,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e3.id, user_id: u1.id)
# Expense.create(item:"Decorations", amount: "112.00", description:"Decoration for the event", start_date:DateTime.new(2015,5,1,12), end_date:DateTime.new(2015,8,4,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e3.id, user_id: u5.id)

# Expense.create(item:"Gasoline", amount: "350.00", description:"Gasoline for trip", start_date:DateTime.new(2015,5,1,12), end_date:DateTime.new(2015,5,5,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e4.id, user_id: u4.id)
# Expense.create(item:"Lunch", amount: "50.00", description:"Lunch on Tuesday", start_date:DateTime.new(2015,5,2,12), end_date:DateTime.new(2015,5,2,17), calculation_type:"Groceries", tag:"", approved: true, event_id: e4.id, user_id: u5.id)

#Boat test	
e5 = Event.create(name: "Boat test", 	start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,5,1,12) + 10,  location: "Bahamas", image: "http://festivalfling.com/wp-content/uploads/2012/04/bonnaroo-crowd.jpeg")
Role.create(event_id: e5.id, user_id: u5.id, start_date: e5.start_date,  end_date: e5.end_date, 	 permission: "owner")
Role.create(event_id: e5.id, user_id: u4.id, start_date: e5.start_date + 1,  end_date: e5.end_date - 1, 	 permission: "friend")
Role.create(event_id: e5.id, user_id: u3.id, start_date: e5.start_date + 5,  end_date: e5.end_date - 2, 	 permission: "friend")
# Expense.create(item:"Boat", amount: "5000.00", description:"Breakfast Bagels", start_date: e5.start_date, end_date: e5.end_date, calculation_type:"Boat", tag:"", approved: true, event_id: e5.id, user_id: u5.id)
# Role.create(event_id: e5.id, user_id: u2.id, start_date: e5.start_date + 1,  end_date: e5.end_date, 	 permission: "friend")
# Role.create(event_id: e5.id, user_id: u1.id, start_date: e5.start_date + 1,  end_date: e5.end_date, 	 permission: "friend")



