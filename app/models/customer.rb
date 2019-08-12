require_relative "review"
class Customer
  attr_reader :first_name, :last_name
  attr_accessor 
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @customer_review = []
    @@all << self
  end

  def add_review
   Review.all(restaurant, content, rating)
  end

  def num_reviews
    Review.all.collect {|review|review == self}
  end

  def restaurants
    all_reviewed_restaurants = Customer.add_review.collect{|restaurant| restaurant.customer_review}
  end

  def self.find_by_name(name)
    Customer.all.find {|name| first_name == self}
  end

  def self.find_all_by_first_name(name)
    Customer.all.find{|name| }
  end


  def self.all
    @@all
  end

end
