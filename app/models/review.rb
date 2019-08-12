class Review
  attr_accessor :content
  attr_reader :customer, :restaurant, :rating
  @@all = []
  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating.clamp(1, 5).round
    @@all << self
  end

  def self.all
    @@all
  end
  
  def rating=(rating)
    @rating = rating.clamp(1, 5).round
  end

end

