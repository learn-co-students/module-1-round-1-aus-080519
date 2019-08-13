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

  # Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
    #return all restaurant reviews
    restaurant_reviews = Review.all.select{|review|review.restaurant == self}
    #return unique array of customer attached to each review
    customer_reviews_by_rest = restaurant_reviews.map {|review|review.customer}
    customer_reviews_by_rest.uniq #added variable and then applied .uniq

    # ----------------------- VB: Error with uniq ------------------------------
    # restaurant_reviews.map {|review|review.customer}.uniq
  end

  #returns an array of all reviews for that restaurant
  def reviews
    # Review.all.map_by{|review|review.restaurant == self}

    # ----------------------- VB: Error with map_by ------------------------------
    Review.all.select{|review|review.restaurant == self} #change to select 
  end

  #returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    #use reviews method and reduce to get total of all star ratings
    total_ratings = self.reviews.reduce(0){|sum, star| sum + star.rating}
    #get reviews array length which should be the total number of reviews for specific restaurant 
    total_reviews = self.reviews.length
    #get average    
    avg = total_ratings / total_reviews
    #return average
    avg

    # ----------------------- VB: Only returns 2 ------------------------------
  end

  #returns the longest review content for a given restaurant
  def longest_review
    #compare each review.content.length to each other to find max value
    self.reviews.max{|review_a, review_b| review_a.content <=> review_b.content}

    # ----------------------- VB: Doesn't return longest review for a specific resturant ------------------------------
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    #find_by only returns first instance which will be an object value
   self.all.find{|restaurant|restaurant.name == name}


    # ----------------------- VB: Error ------------------------------
  end

end
