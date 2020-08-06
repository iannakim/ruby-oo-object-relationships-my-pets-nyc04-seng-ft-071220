require 'pry'


class Owner
 
  @@all = []

  attr_reader :name, :species, :say_species

  def initialize(name_arg)
    @name = name_arg
    @species = "human"
    @@all << self
  end
#binding.pry
  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
    
  end

  def cats
      Cat.all.select{|cat| cat.owner == self}
 #returns a a collection of all the cats that belong to the owner
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
#returns a a collection of all the cats that belong to the owner
  end

  def buy_cat(a_cat)
    Cat.new(a_cat, self)
  end

  def buy_dog(a_dog)
    Dog.new(a_dog, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood ="happy"
    end
  end
  
  def feed_cats
    Cat.all.each do |cat|
      cat.mood ="happy"
    end
  end

  def sell_pets
    all_pets = Cat.all + Dog.all
    all_pets.each do |pet_info|
      pet_info.mood = "nervous"
      pet_info.owner = nil
    end

  end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end


    
end

#lida = Owner.new("Lida")