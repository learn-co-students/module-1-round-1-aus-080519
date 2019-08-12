class Review
  attr_reader :customer, :restaurant
  attr_writer :rating
  attr_accessor :content

    @@all = []
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        if @rating >= 1 && @rating <= 5
            return @rating
        else
            return nil
        end
    end
end

