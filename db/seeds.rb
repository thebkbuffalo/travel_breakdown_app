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

u1 = User.create(name: "Gray",  image: "http://justinjackson.ca/wp-content/uploads/2008/08/justin-jackson-black-and-white-canada-profile.jpg", email: "gray.reinhard@gmail.com", admin: false, phone_number: "536-345-3456", password: "good guy")
u2 = User.create(name: "Evan",  image: "http://www.uidaho.edu/~/media/Images/orgs/enrollment-mgmt/Admissions/2012/cezar-admissions-profile.ashx", email: "evan@fakegmail.com", admin: false, phone_number: "536-345-3456", password: "good guy")
u3 = User.create(name: "Ariel", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-EElE6Vip6mQHP4Wned4VXxhyUIlMyv3aHjwgEujK0s0Z3UO0", email: "ariel@fakegmail.com", admin: false, phone_number: "536-345-3456", password: "good gal")
u4 = User.create(name: "Aaron", image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSReCMdBV28yy7H0R3PmS1waCPIzRUQOdNtEoftBaeH7zychCyz", email: "aaron@fakegmail.com", admin: false,  phone_number: "536-345-3456", password: "good guy")
u5 = User.create(name: "Erica", image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSGwe4QW8OUlUaf06TO7pf8LH46cLJRGDBRbmWfba5VMLDeh6ZUmg", email: "erica@fakegmail.com", admin: true,  phone_number: "536-345-3456", password: "good gal")

e1 = Event.create(name: "Boat", start_date: DateTime.new(2015,9,1,17), end_date: DateTime.new(2015,9,8,17),  location: "Bahamas", image: "https://www.peaceboat.com/v/vspfiles/assets/images/boat%20horz%202.gif")
e2 = Event.create(name: "Bachelorette", start_date: DateTime.new(2014,12,1,17), end_date: DateTime.new(2014,12,4,17), location: "Vegas", image: "http://theheadliner.com/wp-content/uploads/2014/02/bachelorette-party-editorial-heels-at-Andaz-Hotel-San-Diego-1.jpg")
e3 = Event.create(name: "Summer Share", start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,8,4,17),  location: "East Hampton", image: "http://cdn.c.photoshelter.com/img-get/I0000ROqaL_wF3iY/s/750/600/beach-house-001.jpg")
e4 = Event.create(name: "Bonnaroo", 	start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,5,5,17),  location: "Tennessee", image: "http://festivalfling.com/wp-content/uploads/2012/04/bonnaroo-crowd.jpeg")


r1 = Role.create(event_id: e1.id, user_id: u1.id, start_date: e1.start_date, 	 end_date: e1.end_date, 	 permission: "owner" )
r2 = Role.create(event_id: e1.id, user_id: u2.id, start_date: e1.start_date, 	 end_date: e1.end_date - 1,  permission: "friend")
r3 = Role.create(event_id: e1.id, user_id: u3.id, start_date: e1.start_date + 4,  end_date: e1.end_date, 	 permission: "friend")
r4 = Role.create(event_id: e1.id, user_id: u4.id, start_date: e1.start_date, 	 end_date: e1.end_date - 2,  permission: "friend")
r5 = Role.create(event_id: e1.id, user_id: u5.id, start_date: e1.start_date + 1,  end_date: e1.end_date, 	 permission: "friend")

r6 = Role.create(event_id: e2.id, user_id: u1.id, start_date: e2.start_date, 	 end_date: e2.end_date, 	 permission: "friend")
r7 = Role.create(event_id: e2.id, user_id: u2.id, start_date: e2.start_date, 	 end_date: e2.end_date - 1,  permission: "owner" )
r8 = Role.create(event_id: e2.id, user_id: u3.id, start_date: e2.start_date, 	 end_date: e2.end_date, 	 permission: "friend")
r9 = Role.create(event_id: e2.id, user_id: u4.id, start_date: e2.start_date + 2,  end_date: e2.end_date, 	 permission: "friend")
r10 = Role.create(event_id: e2.id, user_id: u5.id, start_date: e2.start_date + 2,  end_date: e2.end_date, 	 permission: "friend")

r11 = Role.create(event_id: e3.id, user_id: u1.id, start_date: e3.start_date + 10, end_date: e3.end_date, 	 permission: "friend")
r12 = Role.create(event_id: e3.id, user_id: u2.id, start_date: e3.start_date, 	 end_date: e3.end_date - 20, permission: "friend")
r13 = Role.create(event_id: e3.id, user_id: u3.id, start_date: e3.start_date + 1,  end_date: e3.end_date - 14, permission: "owner" )
r14 = Role.create(event_id: e3.id, user_id: u4.id, start_date: e3.start_date, 	 end_date: e3.end_date - 5,  permission: "friend")
r15 = Role.create(event_id: e3.id, user_id: u5.id, start_date: e3.start_date + 15, end_date: e3.end_date, 	 permission: "friend")

r16 = Role.create(event_id: e4.id, user_id: u1.id, start_date: e4.start_date, 	 end_date: e4.end_date, 	 permission: "friend")
r17 = Role.create(event_id: e4.id, user_id: u2.id, start_date: e4.start_date, 	 end_date: e4.end_date - 1,  permission: "friend")
r18 = Role.create(event_id: e4.id, user_id: u3.id, start_date: e4.start_date, 	 end_date: e4.end_date,      permission: "friend")
r19 = Role.create(event_id: e4.id, user_id: u4.id, start_date: e4.start_date, 	 end_date: e4.end_date, 	 permission: "owner" )
r20 = Role.create(event_id: e4.id, user_id: u5.id, start_date: e4.start_date + 1,  end_date: e4.end_date, 	 permission: "friend")




Expense.create(item:"Lodging", amount: "1098.00", description:"Lodging on the boat", start_date:e1.start_date + 1, end_date:e1.end_date - 1, calculation_type:"Boat", tag:"", approved: true, role_id: r1.id)
Expense.create(item:"wines", amount: "225.00", description:"Provided the wine", start_date:e1.start_date + 1, end_date:e1.end_date - 1, calculation_type:"Groceries", tag:"", approved: true, role_id: r2.id)
Expense.create(item:"Cheese", amount: "29.00", description:"Cheese for the wine", start_date:e1.start_date + 1, end_date:e1.end_date - 3, calculation_type:"Groceries", tag:"", approved: true, role_id: r3.id)
Expense.create(item:"Wine Crackers", amount: "12.00", description:"Crackers for the cheese", start_date:e1.start_date + 1, end_date:e1.end_date - 3, calculation_type:"Groceries", tag:"", approved: true, role_id: r4.id)
Expense.create(item:"Soft drinks", amount: "22.00", description:"Sodas", start_date:e1.start_date + 1, end_date:e1.end_date - 2, calculation_type:"Groceries", tag:"", approved: true, role_id: r4.id)
Expense.create(item:"Bagels", amount: "15.44", description:"Breakfast Bagels", start_date:e1.start_date + 1, end_date:e1.end_date - 4, calculation_type:"Groceries", tag:"", approved: true, role_id: r5.id)

Expense.create(item:"Whiskey", amount: "52.00", description:"Whiskey Bottle", start_date:e2.start_date + 1, end_date:e2.end_date - 5, calculation_type:"Groceries", tag:"", approved: true, role_id: r6.id)
Expense.create(item:"Breakfast", amount: "42.00", description:"Bacon and Eggs breakfast", start_date:e2.start_date, end_date:e2.end_date - 3, calculation_type:"Groceries", tag:"", approved: true, role_id: r7.id)
Expense.create(item:"Decorations", amount: "52.00", description:"Event Decor", start_date:e2.start_date + 1, end_date:e2.end_date - 1, calculation_type:"Gift", tag:"", approved: true, role_id: r8.id)
Expense.create(item:"Jewelry", amount: "312.00", description:"Necklace",  start_date:e2.start_date, end_date:e2.end_date, calculation_type:"Gift", tag:"", approved: true, role_id: r9.id)
Expense.create(item:"Watch", amount: "1032.00", description:"Gold Watch Gift",  start_date:e2.start_date, end_date:e2.end_date, calculation_type:"Gift", tag:"", approved: true, role_id: r10.id)

Expense.create(item:"Drinks", amount: "152.00", description:"Drinks for the evenings", start_date:e3.start_date + 1, end_date:e3.end_date - 3, calculation_type:"Groceries", tag:"", approved: true, role_id: r11.id)
Expense.create(item:"Breakfast", amount: "12.00", description:"Breakfast food", start_date:e3.start_date + 1, end_date:e3.end_date - 3, calculation_type:"Groceries", tag:"", approved: true, role_id: r12.id)
Expense.create(item:"Camera", amount: "1102.00", description:"DSLR Camera", start_date:e3.start_date, end_date:e3.end_date, calculation_type:"Gift", tag:"", approved: true, role_id: r13.id)
Expense.create(item:"Lunch", amount: "153.00", description:"Lunch on the second week", start_date:e3.start_date + 9, end_date:e3.end_date - 2, calculation_type:"Groceries", tag:"", approved: true, role_id: r15.id)

Expense.create(item:"Breakfast", amount: "22.00", description:"Breakfast on the first day", start_date:e4.start_date + 3, end_date:e4.end_date - 2, calculation_type:"Groceries", tag:"", approved: true, role_id: r16.id)
Expense.create(item:"Drinks", amount: "82.00", description:"Drinks on second night", start_date:e4.start_date + 1, end_date:e4.end_date - 3, calculation_type:"Groceries", tag:"", approved: true, role_id: r17.id)
Expense.create(item:"Dinner", amount: "342.00", description:"Paid for dinner", start_date:e4.start_date + 4, end_date:e4.end_date - 1, calculation_type:"Groceries", tag:"", approved: true, role_id: r18.id)
Expense.create(item:"Decorations", amount: "112.00", description:"Decoration for the event", start_date:e4.start_date, end_date:e4.end_date, calculation_type:"Groceries", tag:"", approved: true, role_id: r19.id)
Expense.create(item:"Gasoline", amount: "350.00", description:"Gasoline for trip", start_date:e4.start_date + 1, end_date:e4.end_date - 1, calculation_type:"Groceries", tag:"", approved: true, role_id: r19.id)
Expense.create(item:"Lunch", amount: "50.00", description:"Lunch on Tuesday", start_date:e4.start_date + 4, end_date:e4.end_date - 2, calculation_type:"Groceries", tag:"", approved: true, role_id: r20.id)

#Boat test	
e5 = Event.create(name: "Boat test", 	start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,5,1,12) + 10,  location: "Bahamas", image: "http://festivalfling.com/wp-content/uploads/2012/04/bonnaroo-crowd.jpeg")
r21 = Role.create(event_id: e5.id, user_id: u5.id, start_date: e5.start_date,  end_date: e5.end_date, 	 permission: "owner")
Role.create(event_id: e5.id, user_id: u4.id, start_date: e5.start_date + 1,  end_date: e5.end_date - 1, 	 permission: "friend")
Role.create(event_id: e5.id, user_id: u3.id, start_date: e5.start_date + 5,  end_date: e5.end_date - 2, 	 permission: "friend")


Expense.create(item:"Boat", amount: "5000.00", description:"Breakfast Bagels", start_date: e5.start_date, end_date: e5.end_date, calculation_type:"Boat", tag:"", approved: true, role_id:r21.id)

#Groceries test	
e6 = Event.create(name: "Groceries test", 	start_date: DateTime.new(2015,5,1,12),  end_date: DateTime.new(2015,5,1,12) + 10,  location: "Bahamas", image: "http://festivalfling.com/wp-content/uploads/2012/04/bonnaroo-crowd.jpeg")
r22 = Role.create(event_id: e6.id, user_id: u5.id, start_date: e6.start_date,  end_date: e6.end_date, 	 permission: "owner")
Role.create(event_id: e6.id, user_id: u4.id, start_date: e6.start_date + 1,  end_date: e6.end_date - 1, 	 permission: "friend")
Role.create(event_id: e6.id, user_id: u3.id, start_date: e6.start_date + 5,  end_date: e6.end_date - 2, 	 permission: "friend")


Expense.create(item:"Groceries", amount: "400.00", description:"Breakfast Bagels", start_date: e6.start_date, end_date: e6.end_date, calculation_type:"Groceries", tag:"", approved: true, role_id:r22.id)


