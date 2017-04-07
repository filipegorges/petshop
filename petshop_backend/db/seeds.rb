require './lib/random_pet_generator.rb'
include RandomPetGenerator

1000.times do 
  Dog.new(RandomPetGenerator.generate_random_dog).save(validate: false)
end
