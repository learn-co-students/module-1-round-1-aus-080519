class Review

    attr_accessor :content, :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(restaurant, content, rating, customer)
        @restaurant = restaurant #reader only
        @content = content
        @rating = rating
        @customer = customer #reader only
        @@all << self
    end

    def self.all
        @@all
    end

end

