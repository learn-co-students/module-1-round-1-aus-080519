require_relative "review"
class Customer
  
  @@all = []

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    @reviews << self
  end

  def num_reviews
    reviews_total = reviews.map{|r| r == self }
    reviews_total.sum
  end

  def restaurants
    my_restaurants = reviews.uniq {|r| self.all} #fix this
  end


    def find_by_name
      self.full_name {|f| f.full_name == self}
    end

    def self.all_names
    end
    




end
