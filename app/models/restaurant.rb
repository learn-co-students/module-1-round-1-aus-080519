require_relative "review"

 # 🐸: EXCELLENT!
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
    reviews.map{|review| review.customer}.uniq
  end
  
  def average_star_rating
    # 🐸: Nicely done! 
    #     - You can simplify your sum calculation.
    #     - It can also be very helpful to breakdown such long code into pieces for better readability to others.
    total = reviews.inject(0.0){|sum, review| sum + review.rating} / reviews.length
  end

  def longest_review
    reviews.max_by{|review| review.content.length}.content
  end

  def self.find_by_name(name)
    @@all.find{|restaurant| restaurant.name == name}
  end
  

end
