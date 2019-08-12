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




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line