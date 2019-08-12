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


binding.pry
0 #leave this here to ensure binding.pry isn't the last line