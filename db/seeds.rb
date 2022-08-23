puts "Cleaning database ...."
Plane.destroy_all
User.destroy_all


puts "Generating Users and planes ..."


badass1 = User.create(email: "coco@gmail.com", first_name: "coco", last_name: 'string', username: "map", password: "123456")
badass2 = User.create(email: "zach@gmail.com", first_name: "zach", last_name: 'frontend', username: "array", password: "123456")
badass3 = User.create(email: "steph@gmail.com", first_name: "steph", last_name: 'backend', username: "scss", password: "123456")
badass4 = User.create(email: "tenzayn@gmail.com", first_name: "tenzayn", last_name: 'fullstack', username: "html", password: "123456")
badass5 = User.create(email: "ambroise@gmail.com", first_name: "ambroise", last_name: 'figma', username: "javascript", password: "123456")



Plane.create(name: "AmericanAirlines", model: "A001", price_per_hour: 600, seats: 200, overview: "
  American Airlines is considered to be a safe airline and has excellent mileage redemption options. It offers flights to many destinations worldwide and has a variety of ticket types for travelers of all budgets.", address: "911 Newyorkstreet 007", user: badass1)
Plane.create(name: "BrusselsAirlines", model: "B800", price_per_hour: 500, seats: 140, overview: "Brussels Airlines brings the world to Belgium and the best of Belgium to the world, among others through collaborations with Belgian Star Chefs, Belgian culinary products and the Belgian Icons, specially painted aircraft that honor a Belgian iconic person, team or event to promote Belgian culture worldwide.", address: "001 brussels gate 712", user: badass1)
Plane.create(name: "Fly Emirates", model: "F200", price_per_hour: 5900, seats: 67, overview: "Emirates is Certified as a 4-Star Airline for the quality of its airport and onboard product and staff service. Product rating includes seats, amenities, food & beverages, IFE, cleanliness etc, and service rating is for both cabin staff and ground staff.", address: "Dubai 007", user: badass1)
Plane.create(name: "Qatar", model: "Q340", price_per_hour: 4000, seats: 49, overview: " Qatar Airways. Qatar Airways is the world's best airline this year, having also won the top spot in 2021. The airline is famous for its luxurious Q-Suite, as well as its passenger-focused onboard service", address: "Qatar 341", user: badass2)
Plane.create(name: "Lufthansa", model: "E300", price_per_hour: 900, seats: 340, overview: "Lufthansa is Certified as a 4-Star Airline for the quality of its airport and onboard product and staff service. Product rating includes seats, amenities, food & beverages, IFE, cleanliness etc, and service rating is for both cabin staff and ground staff.", address: "london bridge 47", user: badass2)
Plane.create(name: "Air France", model: "F80", price_per_hour: 800, seats: 200, overview: "Air France is Certified as a 4-Star Airline for the quality of its airport and onboard product and staff service. Product rating includes seats, amenities, food & beverages, IFE, cleanliness etc, and service rating is for both cabin staff and ground staff.", address: "Paris 456", user: badass2)
Plane.create(name: "Air India", model: "I80", price_per_hour: 1000, seats: 140, overview: "Good quality catering service with choice of vegetarian and non vegetarian. Crew was attentive and was available to help. Magazines and newspaper were free.", address: "New Delhi 341", user: badass2)
Plane.create(name: "Japen Airlines", model: "J180", price_per_hour: 578, seats: 340, overview: "certified 5-Star Airline for its consistently impressive products and services. With this rigorous assessment evaluating a myriad of categories including ground staff, seat quality, and inflight cuisine, this designation helps passengers identify the world's leading airlines.", address: "Tokyo 444", user: badass3)
Plane.create(name: "Austrain", model: "AU320", price_per_hour: 900, seats: 340, overview: "Austrian Airlines was once again given a top ranking in the renowned Skytrax World Airline Awards 2019. Austria's national carrier won the world title in the category “Best Premium Economy Class Onboard Catering”.", address: "12 morning street", user: badass3)
Plane.create(name: "Air Asia", model: "A310", price_per_hour: 300, seats: 340, overview: "AirAsia is Certified as a 3-Star Low-Cost Airline for the quality of its airport and onboard product and staff service. Product rating includes cabin comfort, baggage / seat charges, buy onboard food & beverages, cabin cleanliness, and service rating is for cabin and ground staff.", address: "Asia 300", user: badass3)
Plane.create(name: "Etihad Airway", model: "ABU580", price_per_hour: 1050, seats: 250, overview: "Etihad Airways continues to set the global benchmark for aviation. Its commitment to improving its customer service, technology and inflight experience is unrivalled and I am delighted that it has been acknowledged by both the travel trade and the public.”", address: "Abu Dhabi 43", user: badass3)
Plane.create(name: "Turkish Airway", model: "TR640", price_per_hour: 600, seats: 240, overview: "
  Turkish Airlines, Europe's Best Airline for past 5 years. Turkish Airlines was chosen Best Airline in Europe, “Best Airline in Southern Europe” and named “World's Best Business Class Airline Lounge” and “World's Best Business Class Lounge Dining” in the 2015 Skytrax World Airline Awards", address: "Istanbul", user: badass4)
Plane.create(name: "Gulf Air", model: "GL680", price_per_hour: 650, seats: 240, overview: "
  All food on Gulf Air-operated flights is ''halal' and there is no need to request a Muslim meal. Suitable for vegetarians who require only a combination of raw fruits & vegetables.", address: "the Kingdom of Bahrain 43", user: badass4)
Plane.create(name: "Air New Zealand", model: "NZ320", price_per_hour: 790, seats: 140, overview: "At Air New Zealand, we make sure everyone has a super-comfy flight. It all starts with our slim-line seats with sculptured upholstering and flexible headrest. These ergonomic details mean you'll enjoy a deeper and more restorative sleep. And you'll have plenty to keep you entertained before you nod off.", address: "New zealand 432", user: badass4)
Plane.create(name: "Singapore Airlines", model: "SIG980", price_per_hour: 980, seats: 240, overview: "Singapore Airlines' economy class: Seats: Seats on most international flights are comfortable and include an ergonomic design and six-way headrest. The seats recline, and a high-definition touchscreen is filled with movies and shows to keep you entertained", address: "Singapore 567", user: badass4)


puts "#{Plane.all.count}"
