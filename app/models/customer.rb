require_relative "review"

# 🐸: GREAT WORK!
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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  # 🐸: Excellent job in creating your own helper function here!!
  #helper method
  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    # 🐸: Amazing work! You took full advantage of the helper function!
    #     - Notice how I didn't do 'self.reviews' in line 32? Although this is personal preference and I like the way you added the 'self.', it really depends on your future team's style and protocol. Just wanted to let you know as an FYI.
    reviews.length
  end

  def restaurants
    # 🐸: GREAT JOB! 
    reviews.map{|review| review.restaurant}.uniq
  end

  # 🐸: Great job and this works, but sticking to our conventional way, try setting up class methods with 'self.'
  def self.find_by_name(name)
    @@all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.map{|customer| customer.full_name}
  end
end
