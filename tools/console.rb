require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rubios = Restaurant.new("Rubio's")
burger_king = Restaurant.new("Burger King")
mcdonalds = Restaurant.new("McDonalds")

jason = Customer.new("Jason", "Le")
hemesh = Customer.new("Hemesh", "Patel")
nathan = Customer.new("Nathan", "le")
eric = Customer.new("Eric", "Rios")
mark = Customer.new("Mark", "Steranka")

jason_review = jason.add_review(mcdonalds, "has delicious burgers", 7)
hemesh_review = hemesh.add_review(burger_king, "has very disgusting burgers", 1)
nathan_review = nathan.add_review(rubios, "best fish tacos in the world", 4)
eric_review = eric.add_review(rubios, "average fish burritos you'll ever taste", 3)
mark_review = mark.add_review(rubios, "why you should not eat at Rubios", 2)
jason_review2 = jason.add_review(burger_king, "not as good as Mcdonalds", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line