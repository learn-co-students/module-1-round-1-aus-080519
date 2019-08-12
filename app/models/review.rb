class Review
  attr_accessor :review, :rating
  attr_reader :customer, :restaurant
  @@all = []
  def initialize(customer, restaurant, review, rating)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end


end

