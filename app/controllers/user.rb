# show the user create form
get '/users/new' do
  erb :'users/new'
end

#show user's profile page
get '/users/:id' do
  @user = User.find(params[:id])
  if current_user == @user
    erb :'users/show'
  else
    redirect '/login'
  end
end

#create user account
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    login(@user)
    redirect "users/#{@user.id}"
  else
    redirect '/'
  end
end
