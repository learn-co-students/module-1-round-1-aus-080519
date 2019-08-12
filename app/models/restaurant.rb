require_relative 'review'

# 🐸: Amazing work!! 
class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    # 🐸: Excellent job, especially being able to get the uniq list of customers!
    #     - You can simplify it as below.
    #     - Also, notice how I didn't do 'self.reviews' in line 27? Although this is personal preference and I like the way you added the 'self.', it really depends on your future team's style and protocol. Just wanted to let you know as an FYI.
    my_customers = reviews.map{|review| review.customer}
    my_customers.uniq
  end

  def average_star_rating
    # 🐸: Love it! 
    my_total = reviews.reduce(0){|sum, review| sum + review.rating}
    my_total.to_f/reviews.count
  end

  def longest_review
    # 🐸: Love how you used the 'max_by' method!
    longest_review = reviews.max_by{|review| review.content.length}
    longest_review.content
  end

  def self.find_by_name(name)
    @@all.find{|restaurant| restaurant.name == name}
  end
end
