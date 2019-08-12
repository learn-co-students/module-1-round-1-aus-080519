require_relative 'review'

class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    # returns unique list of ALL customers who reviewed a restaurant
    Customer.all.select{|customers| customers.all}
  end

  def reviews
    Review.all.select{|reviews| reviews.all}
  end

  def average_star_rating
    Customer.all.select{|reviews| reviews.reduce}
  end

  def longest_review
    Review.all.select{|reviews| reviews.length }
  end

  def find_by_name(name)
    self.all.
end
