class Hiker


 attr_accessor :name, :trails
  
  @@all = []
  
   def initialize(name)
    @name = name
    @trails = []
   end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.destroy_all
    @@all.clear
  end

end