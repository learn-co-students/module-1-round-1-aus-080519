require_relative "review"
class Customer
  attr_accessor :total_reviews
  attr_reader :first_name, :last_name 
  @@all = []
  def initialize(first_name, last_name, total_reviews)
    @first_name = first_name
    @last_name  = last_name
    @total_reviews = total_reviews
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  def self.all 
    @@all 
  end
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
    total_reviews += 1 
  end
  def num_reviews(customer)
    customer.total_reviews
  end
  def restaurants(customer)
   yelpcareer =  Review.all.collect {|customer| customer.restaurant}
   yelpcareer.uniq!
  end #self.restaurant.uniq! would that work? ask later
end 