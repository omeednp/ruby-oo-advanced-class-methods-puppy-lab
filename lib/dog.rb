require 'pry'
class Dog

    attr_reader :name

    def initialize (name)
        @name = name
        save
    end

    @@all = []

    def self.all
        @@all
    end
    
    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.map do |dog|
            puts dog.name
        end
    end

    def save
        @@all << self
    end

end
