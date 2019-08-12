require_relative 'review'

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

  def add_review(restaurant, review, rating)
    new_review = Review.new(self, restaurant, review, rating)
  end

  def num_reviews
    my_reviews = Review.all.select{|review| review.customer == self}
    my_reviews.count
  end

  def restaurants
    my_reviews = Review.all.select{|review| review.customer == self}
    my_restaurants = my_reviews.map{|review| review.restaurant}
    my_restaurants.uniq
  end


end
