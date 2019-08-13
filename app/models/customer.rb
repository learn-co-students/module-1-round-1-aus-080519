require_relative "review"
class Customer
  
  @@all = []

  attr_reader :first_name, :last_name

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
      new_review = Review.new(self, restaurant, content, rating)
    end

    def num_reviews
      # we need to find all of the reviews using Reviews.all
      my_reviews = Review.all.select{|r| r.customer == self}
      # then, we need turn the array into a number (using .count?)
      total_reviews = my_reviews.count
    end

    def restaurants
      my_reviews = Review.all.select{|r| r.customer == self}
      # find restaurant
      my_restaurants = my_reviews.map{|r| r.restaurant.name}
      # iterate thru *new* array - check for dupes (.uniq)
      final_reviews = my_restaurants.uniq
    end

    def self.find_by_name(name)
      # find string of full names
      find_names = @@all.find{|n| n.full_name}
      # i need to use a .find method here, which will return the first object in the array that matches.
     #?? This doesn't look right. need to revisist.
    end

    def self.find_all_by_first_name(name)
      #find string full of firtst
      find_first_names = @@all.select{|n| n.first_name}
      #figure out if they match and return the new array 
    end

    def self.all_names
      # @@all.select with return all the values that match argument. Object of array.full_name
      find_all_names = @@all.select {|n| n.full_name}
      # can i call .full_name since it's been defined above?
      # may be missing a step here. 
    end

end
