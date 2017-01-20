get '/shoes' do
  erb :"shoes/index"
end

get '/shoes/new' do
  erb :"shoes/new"
end

post '/shoes' do
  @shoe = Shoe.new(title: params[:title], brand: params[:brand], size: params[:size], price: params[:price], condition: params[:condition], distance: params[:distance], description: params[:description], user: current_user)
    if @shoe.save
      redirect '/shoes'
    else
      redirect '/shoes/new'
    end
end
