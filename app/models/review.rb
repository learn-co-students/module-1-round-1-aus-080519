# 🐸: LOVE IT!
class Review
  attr_accessor :content, :rating
  attr_reader :customer, :restaurant 
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    # 🐸: Awesome job in using the '.clamp' method. One little comment:
    #     - What would happen if a user accidentally put in 10 for the rating when meaning 1? Due to the '.clamp', it would automatically set to the max 5. Can you think of a way it can point out an error message instead?
    @rating = rating.clamp(1, 5).round
    @@all << self
  end

  def self.all
    @@all
  end

  # 🐸: You could set this as an accessor.
  # def rating=(rating)
  #   @rating = rating.clamp(1, 5).round
  # end

end

