class Dog
  
  @@all = []

  attr_reader :name
  attr_accessor :owner, :mood

  def initialize(name_arg, owner_arg)
    @name = name_arg
    @owner = owner_arg
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end

  
  # code goes here
end




# Define a `Dog` and `Cat` class that have the attributes required by the
#   test suite. Keep in mind, some of the attributes should be readable and writable
#   (i.e. `attr_accessor`s), while others may need to be _just_ setters
#   (`attr_writer`) or _just_ getters (`attr_reader`). The test suite will make this
#   clear so pay attention to the test output.