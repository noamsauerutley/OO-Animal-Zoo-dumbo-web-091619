### Zoo Class Deliverables:
# - A `zoo` should be initialized with a name and a location, which should both be passed as strings.
# - `Zoo#location` should return the location of the zoo instance.
# - `Zoo#name` should return the name of the zoo instance.
# - `Zoo.all` should return an array of all the zoo instances.
# - `Zoo#animals` should return all the animals that a specific instance of a zoo has.
# - `Zoo#animal_species` should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array).
# - `Zoo#find_by_species` should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
# - `Zoo#animal_nicknames` should return an array of all the nicknames of animals that a specific instance of a zoo has.
# - `Zoo.find_by_location` should take in a location as an argument and return an array of all the zoos within that location.



class Zoo
    attr_reader :name, :location
    # - A `zoo` should be initialized with a name and a location, which should both be passed as strings.


    @@all = []

    def initialize(name, location)
    # - `Zoo#name` should return the name of the zoo instance.
    # - `Zoo#location` should return the location of the zoo instance.
        @name = name
        @location = location
        @@all << self
    end

    def self.all
    # - `Zoo.all` should return an array of all the zoo instances.

        @@all
    end

    def animals
    # - `Zoo#animals` should return all the animals that a specific instance of a zoo has.
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
    # - `Zoo#animal_species` should return an array of all the species (as strings.) of the animals in the zoo. 
    # - However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array).
        animal_species = self.animals.map do |animal|
            animal.species
        end
        animal_species.uniq
    end

    def find_by_species(animal_species)
    # - `Zoo#find_by_species` should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
        self.animals.select do |animal|
        animal.species == animal_species
        end
    end

    def animal_nicknames
    # - `Zoo#animal_nicknames` should return an array of all the nicknames of animals that a specific instance of a zoo has.
        self.animals.map do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(zoo_location)
    # - `Zoo.find_by_location` should take in a location as an argument and return an array of all the zoos within that location.
        @@all.select do |zoo|
            zoo.location == zoo_location
        end
    end

end
