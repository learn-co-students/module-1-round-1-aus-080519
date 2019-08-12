require_relative "review"

class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  #helper method that returns array of all reviews by this customer
  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.reviews.size
  end

  def restaurants
    self.reviews.collect {|review| review.restaurant}
  end

  def self.find_by_name(customer_fullname)
    self.all.find {|customer| self.full_name == customer_fullname}
  end

  def self.find_all_by_first_name(customer_firstname)
    self.all.select {|customer| customer.first_name == customer_firstname}
  end

  def self.all_names
    self.all.collect {|customer| customer.full_name}
  end

end
