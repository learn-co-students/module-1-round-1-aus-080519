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

  #given a restaurant object, some review content (as a string), 
  #and a star rating (as an integer), creates a new review and 
  #associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  #Returns the total number of reviews that a customer has authored
  def num_reviews
    #go through all reviews that match customer

    # ----------------------- VB: Nice use of select ------------------------------
    reviews_array = Review.all.select {|review| review.customer == self}
    reviews_array.length #will output the number of reviews in that array

    # ----------------------- VB: Returns array of reviews not a number ------------------------------
  end

  #Returns a unique array of all restaurants a customer has reviewed
  def restaurants
    # #first get all restaurants a customer has reviewed and set to variable
    #reviewed_restaurants = Review.all.select {|review| review.customer == self}
    # #turn the results into array
    #reviewed_restaurants_array = reviewed_restaurants.map{|review|review.restaurant.name}
    # #return only unique results in this array
    #reviewed_restaurants_array.uniq

    #use num_reviews method to return an array of the restaurants for that customer
    # ----------------------- VB: Nice reuse of num_reviews ---------------------------
    all_reviews = Review.all.select {|review| review.customer == self}
    all_review_restaurants = all_reviews.map{|review|review.restaurant}
    all_review_restaurants.uniq
    #went step by step using ariables to solve

    
    # ----------------------- VB: TYPO ------------------------------
    #all_reviews.uniq
  end

  #given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    #find customer whos full name is equal to name argument. Find_by returns first record
    self.all.find{|customer| customer.full_name == name}

    # ----------------------- VB: Error ------------------------------
  end

  #given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select{|customer|customer.first_name == name} #changed to select since there is a condition

    # ----------------------- VB: Returned [false, false, false] ----------------------------
  end

  #should return an array of all of the customer full names
  def self.all_names
    self.all.map{|customer|customer.full_name}
  end

end
