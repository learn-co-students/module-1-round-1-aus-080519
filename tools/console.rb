require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

arbys = Restaurant.new("Arby's")
burger_king = Restaurant.new("Burger King")
mcdonalds = Restaurant.new("McDonald's")

all_customers = Customer.all
all_restaurants = Restaurant.all
all_reviews = Review.all

andy = Customer.new("Andy", "Rosario")
sarah = Customer.new("Sarah", "Bird")
ravel = Customer.new("Ravel", "Thai")
mason = Customer.new("Mason", "?")
ronald = Customer.new("Ronald", "Thai")
mom = Customer.new("Cathy", "Rosario")
andy2 = Customer.new("Andy", "2")

andy_arby1 = andy.add_review(arbys, "This sucks", 1)
andy.add_review(arbys, "I still can't believe how bad this place is. Roast beef sandwiches should be banned", 1)
andy.add_review(mcdonalds, "Amazing", 5)
ravel.add_review(arbys, "My favorite", 5)
andy.add_review(arbys, "Much better, but still pretty bad", 2)

andy_num_reviews = andy.num_reviews

andy_restaurants = andy.restaurants 

arbys_customers = arbys.customers

arbys_average = arbys.average_star_rating

long_review = arbys.longest_review

cust_by_full = Customer.find_by_name("Andy Rosario")

cust_by_first = Customer.find_all_by_first_name("Andy")

all_names = Customer.all_names

rest_by_name = Restaurant.find_by_name("Arby's")

puts andy_arby1.customer

puts andy_arby1.restaurant 

puts andy_arby1.content

puts andy_arby1.rating 

binding.pry
0 #leave this here to ensure binding.pry isn't the last line