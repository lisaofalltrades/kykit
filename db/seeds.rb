User.destroy_all

##### USER #####
5.times do
  User.create!(
    name: Faker::GameOfThrones.character,
    email: Faker::Internet.email,
    password: '123',
    zip_code: Faker::Address.zip_code
  )
end

# Shoe.create(title: "Mishaped Uggs", brand: "Uggs" , size: 7 , price: 10, condition: "Tore Up" , zip_code: 95116 , distance: 2 , description: "super warm")
# Shoe.create(title: "5 Time Marathon Nikes", brand: "Nike" , size: 9 , price: 25, condition: "Tore Up" , zip_code: 95111 , distance: 5 , description: "they served me well")
# Shoe.create(title: "Boots with the Fur", brand: "Apple Bottom" , size: 5 , price: 15, condition: "Like New" , zip_code: 95116 , distance: 10 , description: "knee high")
# Shoe.create(title: "Rosche", brand: "adidas" , size: 7 , price: 10, condition: "Tore Up" , zip_code: 95116 , distance: 2 , description: "super warm")
