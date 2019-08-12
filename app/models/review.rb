class Review
attr_accessor :content, :rating
attr_reader :author, :restaurant

    @@all = []

  def Initialize (restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

end

