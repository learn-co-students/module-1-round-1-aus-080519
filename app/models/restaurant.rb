require_relative "review"
require_relative "review"
class Restaurant
  attr_reader =  :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all 
  end
  def customers(restaurant)
   singleR =  Review.all.select {|customer| Review.customer = restaurant}
   singleR.uniq!
  end 
  def self.reviews
    Review.all.collect{|review| review.restaurant} 
  end 
  def self.average_star_rating 
   stars = Review.all.select {|review| review.rating}
    average = stars.sum / stars.length 
  end 
  def longest_review(restaurant)
    longest = Reviews.all.find {|reviews| reviews.restaurant}
    longest.max {|a, b| a <=> b}
  end 
  
  def self.find_by_name(name)
    self.all.find{|restaurants| restaurants.name = name}
  end
end
