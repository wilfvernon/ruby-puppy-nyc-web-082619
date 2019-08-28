require "pry"
class Dog
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
    #binding.pry
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all = []
  end
  
  def save
    @@all.push(self)
  end
  
  def self.print_all
    puts @@all.map {|dog|dog.name}
  end
  
 #binding.pry
end