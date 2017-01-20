get '/shoes' do
  erb :"shoes/index"
end

get '/shoes/new' do
  erb :"shoes/new"
end

post '/shoes' do
  @shoe = Shoe.new(params[:shoe])
    if @shoe.save
      redirect '/shoes'
    else
      redirect '/shoes/new'
    end
end
