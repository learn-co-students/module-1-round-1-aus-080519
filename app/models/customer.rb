require_relative 'review'

# 🐸: NICE!!! 
class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, review, rating)
    Review.new(self, restaurant, review, rating)
  end

  
  def num_reviews
    # 🐸: PERFECT! Let's utilize our helper function!
    my_reviews = all_reviews.select{|review| review.customer == self}
    my_reviews.count
  end
  
  def restaurants        
    # 🐸: PERFECT! Let's utilize our helper function!
    my_restaurants = all_reviews.map{|review| review.restaurant}
    my_restaurants.uniq
  end
  
  def self.find_by_name(name)
    @@all.find{|customer| customer.full_name == name}
  end
  
  def self.find_all_by_first_name(name)
    @@all.select{|customer| customer.first_name == name}
  end
  
  def self.all_names
    @@all.map{|customer| customer.full_name}
  end

  # 🐸: Just like in your Restaurant class, let's create a helper method here to grab all the reviews and take advantage of it! Remember, DRY!
  # helper function
  def all_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

end
