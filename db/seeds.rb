imgs = [
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10380.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10452.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10596.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10604.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1069.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10734.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10768.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10823.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_10846.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11180.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11417.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11427.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1143.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11476.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11614.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1172.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11731.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11776.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1179.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11808.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11817.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_11836.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1207.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12168.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12352.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12362.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12372.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12374.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12464.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12485.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1260.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12716.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12776.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1281.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12825.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12844.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_12880.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1295.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1307.jpg',
  'https://images.dog.ceo/breeds/bulldog-boston/n02096585_1311.jpg'
]

dog_names = []
500.times do 
    dog_names << Faker::Creature::Dog.name
end

dog_names.uniq!
unique_names = dog_names[0...40]


imgs.each_with_index do |img, i|
    Dog.create(
        img: img, 
        name: unique_names[i], 
        mood: Faker::Creature::Dog.meme_phrase
    )
end


puts 'Doggos ready 🐶'