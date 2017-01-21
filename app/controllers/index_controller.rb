get '/' do
  @shoes = Shoe.all
  erb :'index'
end
