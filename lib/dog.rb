require 'pry'
# Add your code here
class Dog
    @@all = []

    def initialize(name)
        @name = name
    
        @self = self
        save
    end
    def self.all
        @@all
    end
    def self.print_all
        @@all.each do |instance|
            #binding.pry
            puts instance.name
        end
    end
    def self.clear_all
        @@all = []
    end
    def save
        @@all << @self
    end
    def name
        @name
    end
end

# chiloh = Dog.new("Xhiloh")
# bane = Dog.new("Bane")
# p Dog.all
# p Dog.print_all