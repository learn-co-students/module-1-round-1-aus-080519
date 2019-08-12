require_relative "review"
require_relative "restaurant"

# 🐸: GREAT JOB!!!
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
    Review.new(self, restaurant, rating, content)
  end

  # 🐸: Excellent job in creating your own helper function here!!
  #helper method that returns array of all reviews by this customer
  def reviews
    Review.all.select {|review| review.customer == self}
  end

  # 🐸: Amazing work! You took full advantage of the helper function!
    #     - Notice how I didn't do 'self.reviews' in line 35? Although this is personal preference and I like the way you added the 'self.', it really depends on your future team's style and protocol. Just wanted to let you know as an FYI.
  def num_reviews
    reviews.size
  end

  # 🐸: Nice job. But remember, we need a uniq list!
  def restaurants
    reviews.collect {|review| review.restaurant}
  end

  def self.find_by_name(customer_fullname)
    # 🐸: Great job! You can just use the class variable as well.
    @@all.find {|customer| customer.full_name == customer_fullname}
  end

  def self.find_all_by_first_name(customer_firstname)
    @@all.select {|customer| customer.first_name == customer_firstname}
  end

  def self.all_names
    @@all.collect {|customer| customer.full_name}
  end

end
