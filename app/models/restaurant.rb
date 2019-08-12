require_relative "review"
require_relative "customer"

class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
  end

  def self.all
    @@all
  end
  
  def find_by_name
    self.find {|n| n == self}
  
  def customers
# .uniq
  end

  def reviews
  end

  def average_star_rating
  end
  

    def longest_review
      #.count 

  end



end
