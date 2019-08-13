require_relative "review"
require_relative "customer"

class Restaurant

  @@all = []

  attr_reader :name

    def initialize(name)
      @name = name
      @reviews = [] #not neccessary since we're requiring our Reviews file (?) delet.
      @customers = [] #not necessary since we're requiring our Customers file (?) delet.
    end

    def self.all
      @@all
    end

  
   def customers
      # find all reviews
      # find all customers
      # iterate thru *new* array - check for dupes (.uniq)
      my_reviews = Reviews.all.select{|r| r.restaurant == self}
      my_customers = my_reviews.map{|r| r.customers}
      final_customers = my_customers.uniq
    end

    def reviews
      # define a method that returns an array of all my reviews (self)
      my_reviews = Reviews.all.select{|r| r.restaurant == self}
    end

    def average_star_rating
      #retrieve  `reviews.all` all reviews where I'm the restaurant
      my_reviews = Reviews.all.select{|r| r.restaurant == self}
      # now that i have my reviews, need to get just the rating
      my_rating = my_reviews.map{|r| r.rating}
      # take those ratings and aggregate (sum)
      sum_of_rating = my_rating.sum.to_f
      # take my sum, and divide by .length
      new_average_rating = sum_of_rating/my_rating.length
    end


    def longest_review
      #find reviews where the restaurant is myself
      my_reviews = Reviews.all.select{|r| r.restaurant == self}
      # find content strings of the new array "my reviews"
      my_content = my_reviews.map {|r| r.content}
      # take new array of content (strings) and count the length
      something_variable = my_content.max_by{|r| r.length}
    end

    def self.find_by_name(name)
      #pull our current array of restaurant names and use a method to return first match
      # .find??? 
      # if the element in our array is == to the argument, return that.
      @@all.find {|n| n.restaurant == name}
    end


  end



end
