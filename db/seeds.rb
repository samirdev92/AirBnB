3.times do 
    City.create(name: Faker::Name.unique.name)
end

5.times do 
    Dog.create(name: Faker::Name.unique.name, city_id: rand(1..3))
end

5.times do 
    Dogsitter.create(name: Faker::Name.unique.name, city_id: rand(1..3))
end

10.times do 
    Stroll.create(dog_id: rand(1..5), dogsitter_id: rand(1..5))
end 