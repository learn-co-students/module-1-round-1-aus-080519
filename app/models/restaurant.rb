require_relative "customer"
require_relative "review"

class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.collect {|review| review.customer}
  end

  #helper method that returns array of all ratings for this restaurant
  def ratings
    self.reviews.collect {|review| review.rating}
  end
  
  def average_star_rating
    self.ratings.inject {|sum, rating| sum + rating}.to_f / self.ratings.length
  end

  #helper method that returns array of all this of this restaurant's review content
  def review_contents
    self.reviews.collect {|review| review.content}
  end
  
  def longest_review
    self.review_contents.max {|content_a, content_b| content_a.length <=> content_b.length}
  end

  def self.find_by_name(restaurant_name)
    self.all.find {|restaurant| restaurant.name == restaurant_name}
  end
end
