get '/login' do
  erb :'sessions/new'
end

post '/login' do
  @user = User.authenticate(params[:session][:email], params[:session][:password])
  if @user
    login(@user)
    erb :'users/show'
  else
    redirect '/login'
  end
end

get '/logout' do
  logout
  redirect '/'
end
