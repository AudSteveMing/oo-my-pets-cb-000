require 'pry'

class Owner

  attr_reader :name, :species, :say_species

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @say_species = "I am a human."
    @@owners << self
  end

def self.all
  @@owners
  # binding.pry

end

def self.count
  @@owners.count
end

def self.reset_all
  @@owners.clear
end

def cats
  Cat.all.select do |cats|
    cats.owner == self
    end
end

def dogs
  Dog.all.select {|dogs| dogs.owner == self}
end

# def buy_cat(name)
#   new_owner = Cat.all.find {|cat| cat.name == name}
#   new_owner.owner = self if new_owner
# end

def buy_cat(name)
    Cat.new(name, self)
  end

def buy_dog(name)
  Dog.new(name, self)

end

def walk_dogs
end

def feed_cats
end

def sell_pets
end

def list_pets
end

end
