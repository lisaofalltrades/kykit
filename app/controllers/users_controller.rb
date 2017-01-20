get '/users/new' do
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    login(@user)
    redirect "/users/#{@user.id}"
  else
    redirect '/users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  if current_user == @user
    erb :"users/show"
  else
    redirect '/users/new'
  end
end
