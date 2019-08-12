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
    #How do we add a review? Review.all gets all reviews.
    # (use new)
   Review.all(restaurant, content, rating)
  end

  def num_reviews
    # We need to count each review by a certain customer here.
    # self is a Customer object here, so review will never == self.
    # what do we want it to equal?
    Review.all.collect {|review|review == self}
  end

  def restaurants
    # What condition do we need to look at? 
    # What other array methods are good for this? 
    all_reviewed_restaurants = Customer.add_review.collect{|restaurant| restaurant.customer_review}
  end

  def self.find_by_name(name) #careful with name twice!
    # self here refers to the class Customer. 
    # what do you want the name to be found by? 
    Customer.all.find {|##WHAT IS THIS? name| first_name == self}
  end

  def self.find_all_by_first_name(name)
    # Look up how find works, that will help you finish this one.
    Customer.all.find{|name| }
  end


  def self.all
    @@all
  end

end
