require_relative "customer"

class Restaurant
  attr_reader :name, :customers, :average_star_rating, :longest_review

  @@all = []
  def initialize(name, reviews, average_star_rating, longest_review)
    @name = name
    @reviews = reviews
    # Both average star rating and longest review should 
    # be found by calling methods. What if a new review gets added?
    # This is the 'single source of truth' principle we talked about.
    @average_star_rating = average_star_rating
    @longest_review = longest_review
    @@all << self
  end

  def self.find_by_name(name)
    Restaurant.all.select {|restaurant| restaurant.name == self}
    #self is the object calling the method. Since this is a class method,
    #self will refer to the class Restaurant.  Since you're passing in
    #name, just check to see if |restaurant|'s name matches that.
  end


  def self.all
    @@all
  end

  

end

