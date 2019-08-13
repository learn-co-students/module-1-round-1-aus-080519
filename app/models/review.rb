require_relative "restaurant"
require_relative "customer"
class Review
  
attr_accessor :rating, :content
attr_reader :customer, :restaurant

@@all = []

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    # Infinite loops

    # def customer
    #     my_customers = self.customer
    # end

    # def restaurant
    #     my_restaurants = self.restaurant
    # end

    # def rating
    #     my_rating = self.rating
    # end

    # def content
    #     my_content = self.content
    # end

 
end


