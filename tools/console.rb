require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

# <--- testing restaurant.new --->
scarpetta = Restaurant.new("Scarpetta")
braai = Restaurant.new("Braai")
aria_wine_bar = Restaurant.new("Aria Wine Bar")
taco_bell = Restaurant.new("Taco Bell")
# <--- end testing, restaurant.new --->

# <--- testing review.new --->
# review_1 = Review.new("Jeff Lai", "Braai", 5, "The best South African food you'll ever get outside of Johannesburg. 5/5, will return!")
# review_2 = Review.new("Tammy Bailey", "Little Caesar's", 1, "The pizza is stale everytime I go here.")
# <--- end testing, review.new --->

# <--- testing customer.new --->
syd_bailey = Customer.new("Syd", "Bailey")
hemesh_patel = Customer.new("Hemesh", "Patel")
andy_rosario = Customer.new("Andy", "Rosario")
# <--- end testing, customer.new --->

# <--- testing add review --->
syd_bailey.add_review(taco_bell, 3, "Your food gave me a stomach ache but I love the beef & cheese burritos!")
syd_bailey.add_review(taco_bell, 1, "So much regret")
hemesh_patel.add_review("McDonalds", 2, "The ice cream machine is always down!")
andy_rosario.add_review("Chipotle", 5, "Their menu is keto-friendly!")
# <--- end testing, add review --->

syd_bailey.restaurants

# <--- testing num_reviews method --->
## will return true/false if correct/incorrect
# hemesh_patel.num_reviews == 2 #false
# andy_rosario.num_reviews == 1
# <--- end testing, num_reviews method ---> 



# <--- testing find_by_name (customer) --->
## will return true/false if correct/incorrect
# syd_bailey.find_by_name == "Syd Bailey"
# hemesh_patel.find_by_name == "Peter Parker" #false
# andy_rosario.find_by_name == "Andy Rosario"
# <--- end testing, find_by_name (customer) --->




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line