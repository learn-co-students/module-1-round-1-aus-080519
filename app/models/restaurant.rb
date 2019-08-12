require_relative 'review'

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
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    my_reviews = self.reviews
    my_customers = my_reviews.map{|review| review.customer}
    my_customers.uniq
  end

  def average_star_rating
    my_reviews = self.reviews
    my_total = my_reviews.reduce(0){|sum, review| sum + review.rating}
    my_total.to_f/my_reviews.count
  end

  def longest_review
    my_reviews = self.reviews
    longest_review = my_reviews.max_by{|review| review.content.length}
    longest_review.content
  end


end
