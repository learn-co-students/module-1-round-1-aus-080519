require_relative '../config/environment.rb'
require_relative '../app/models/review'
require_relative '../app/models/restaurant'
require_relative '../app/models/customer'
require 'pry'

def reload
  load 'config/environment.rb'
end

chinese = Restaurant.new("Chinese")
Restaurant.new("Indian")
Restaurant.new("Burgers")

Customer.new("Hemesh", "Patel")
Customer.new("Ron", "Weasley")
Customer.new("Harry", "Potter")

# VB TESTS
# chinese = Restaurant.new("Chinese")
# thai = Restaurant.new("Thai")
# mcd = Restaurant.new("McDonalds")

# hemesh = Customer.new("Hemesh", "Patel")
# vb = Customer.new("Vanessa", "Burroughs")
# harry = Customer.new("Harry", "Potter")

# mcd1 = vb.add_review(mcd, "Garbage", 1)
# mcd2 = vb.add_review(mcd, "Still Garbage", 1)
# mcd3 = harry.add_review(mcd, "Love it", 5)
# thai1 = harry.add_review(thai, "Eh", 3)
# chinese1 = hemesh.add_review(chinese, "Decent", 4)





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line