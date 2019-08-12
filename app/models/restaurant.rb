require_relative "customer"

class Restaurant
  attr_reader :name, :customers, :average_star_rating, :longest_review

  @@all = []
  def initialize(name, reviews, average_star_rating, longest_review)
    @name = name
    @reviews = reviews
    @average_star_rating = average_star_rating
    @longest_review = longest_review
    @@all << self
  end

  def self.find_by_name(name)
    Restaurant.all.select {|restaurant| restaurant.name == self}
  end


  def self.all
    @@all
  end

  

end
