require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
brooklyn_zoo = Zoo.new("Brooklyn Municipal Zoo", "Brooklyn")
san_diego_zoo = Zoo.new("San Diego Zoo", "San Diego")
chicago_zoo = Zoo.new("Chicago City Zoo", "Chicago")
franklin = Animal.new(brooklyn_zoo, "zebra", 500, "frankie")
howard = Animal.new(brooklyn_zoo, "penguin", 12, "howie")
alexander = Animal.new(brooklyn_zoo, "zebra", 350, "lexie")
jeffery = Animal.new(san_diego_zoo, "elephant", 2000, "jeff")
jennifer = Animal.new(san_diego_zoo, "giraffe", 1500, "jenny")
iris = Animal.new(chicago_zoo, "penguin", 7, "riri")
zipporah = Animal.new(chicago_zoo, "penguin", 9, "zippy")
elaine = Animal.new(chicago_zoo, "elephant", 2700, "ellie")


binding.pry
puts "done"

## to test: ruby run.rb then run each method to make sure it works correctly :)
