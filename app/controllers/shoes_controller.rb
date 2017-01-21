get '/shoes' do
  @shoes = Shoe.all
  erb :"shoes/_index"
end

get '/shoes/new' do
  erb :"shoes/new"
end

post '/shoes' do
  @shoe = Shoe.new(params[:shoes])
    if @shoe.save
      redirect '/shoes'
    else
      redirect '/shoes/new'
    end
end

get '/shoes/:id/edit' do
  @shoe = Shoe.find(params[:id])
  if current_user
    erb :'shoes/edit'
  else
    redirect '/'
  end
end

get '/shoes/:id' do
  @shoe = Shoe.find(params[:id])
  erb :'shoes/show'
end
