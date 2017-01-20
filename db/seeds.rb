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

##### SHOES #####

# shoe_list = [
#   [ "Brand New Energy Cloud", "adidas", "9.5", "$36.88", "Never Worn", 50, "This is a description. lorem ipsum sdfiwe ksfjawer nasdkfjuwe ksdf" ],
#   [ "Pretty New Rosherun", "Nike", "10", "$48.10", "Slightly Worn", 50, "This is a description. lorem ipsum sdfiwe ksfjawer nasdkfjuwe ksdf" ]
# ]
#
# shoe_list.each do |title, brand, size, price, condition, miles_range, description|
#   Shoes.create( title: title, brand: brand, size: size, price: price, condition: condition, miles_range: miles_range, description: description )
# end
