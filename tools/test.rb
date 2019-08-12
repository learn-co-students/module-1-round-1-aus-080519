require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Create customer instances
edwin = Customer.new("Edwin", "K")
vanessa = Customer.new("Vanessa", "B")
andrew = Customer.new("Andrew", "H")

# Create restaurant instances
mcdonalds = Restaurant.new("McDonalds")
chipotle = Restaurant.new("Chipotle")
coopers = Restaurant.new("Coopers BBQ")

# ASSOCIATION & AGGREGATE METHODS
# 1. Customer:
#   Add review
edwin_review_one = edwin.add_review(coopers, "Best BBQ in AUSTIN!! I will love to here again and again and again!", 10)
edwin_review_two = edwin.add_review(mcdonalds, "McDonalds is Mcdonalds! McDonalds is America!!", 4)

#   Return total number of reviews a single customer had written.
edwin_total_reviews = edwin.num_reviews # Return 2

#   Return list of restaurants a single customer had written a review for.
edwin_restaurants = edwin.restaurants

# 2. Restaurant:
#   Return list of customers a single restaurant has received reviews from.
vanessa_review_one = vanessa.add_review(mcdonalds, "McDonalds...uhmm..", 2)
mcdonalds_customers = mcdonalds.customers

#   Return entire list of reviews for a single restaurant
mcdonalds_reviews = mcdonalds.reviews

#   Return average rating of a single restaurant
mcdonalds_average_rating = mcdonalds.average_star_rating

#   Return longest review for a single_restaurant
mcdonalds_longest_review = mcdonalds.longest_review   # "McDonalds is Mcdonalds! McDonalds is America!!"


# CLASS METHODS & PROPERTIES
# 1. Customer:
#   Find by name
found_vanessa = Customer.find_by_name("Vanessa B")

#   Find all by first name customers
another_edwin = Customer.new("Edwin", "Salgado")
found_all_edwins = Customer.find_all_by_first_name("Edwin")

#   Find list of entire customers' full names
all_customers = Customer.all_names

# 2.  Restaurant:
#   Find by name
found_coopers = Restaurant.find_by_name("Coopers BBQ") 

# 3.  Review:
#   Return the customer of a written review
found_customer_of_review = vanessa_review_one.customer
found_restaurant_of_review = edwin_review_one.restaurant
found_content_of_review = edwin_review_two.content
found_rating_of_review = edwin_review_two.rating

#   Test if a review's customer or review can be changed in the irb


binding.pry
0 #leave this here to ensure binding.pry isn't the last line