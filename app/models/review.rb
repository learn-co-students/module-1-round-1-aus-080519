class Review
  attr_accessor =  :content, :rating
  attr_reader =  :customer, :restaurant
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
def self.customer
    self.customer
end 
def self.restaurant 
    self.restaurant
end 
def self.rating
    self.rating
end 
def self.content
    self.content
end 

end

