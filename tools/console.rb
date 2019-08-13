require_relative '../config/environment.rb'
require_relative '../app/models/review'
require_relative '../app/models/restaurant'
require_relative '../app/models/customer'
require 'pry'

def reload
  load 'config/environment.rb'
end

chinese = Restaurant.new("Panda Express")
indian = Restaurant.new("Jaipur Palace")
burgers = Restaurant.new("Hopdoddy")

hemesh = Customer.new("Hemesh", "Patel")
ron = Customer.new("Ron", "Weasley")
harry = Customer.new("Harry", "Potter")
harry2 = Customer.new("Harry", "Weasley")

pe1 = hemesh.add_review(chinese, "Tastes like cardboard", 3)
pe2 = hemesh.add_review(chinese, "Somewhat better but not awesome", 4)
jp = ron.add_review(indian, "They are very authentic with their sauces", 4)
hd1 = harry.add_review(burgers, "Eh meat", 2)
hd2 = harry.add_review(burgers, "overpriced garbage", 1)
hd3 = hemesh.add_review(burgers, "undercooked meat, gross", 1)


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