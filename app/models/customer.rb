
require_relative 'restaurant'
require_relative 'review'

class Customer
  attr_reader :first_name, :last_name
  attr_accessor :add_review

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    
  end

  def all_restaurants
    Restaurant.all.select
  end

  def num_reviews
    Review.all.select{|reviews| reviews.count}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def find_by_name(name)
    #####
    self.all.find{|customers|}
  end

  def find_all_by_first_name(name)
    #####
    self.all.select{|customers|}
  
  end

  def all_names
    self.all.select{|customers|}
  end
  
end