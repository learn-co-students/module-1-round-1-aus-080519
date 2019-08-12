require_relative "review"
class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  
  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #helper method
  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants 
    self.reviews.map{|review| review.restaurant}.uniq
  end

  def Customer.find_by_name(name)
    @@all.find{|customer| customer.full_name == name}
  end

  def Customer.find_all_by_first_name(name)
    @@all.select{|customer| customer.first_name == name}
  end

  def Customer.all_names
    @@all.map{|customer| customer.full_name}
  end
end
