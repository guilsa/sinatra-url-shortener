enable :sessions

get '/login' do
  erb :login
end

post '/login' do
  @password = params[:password]
  "Welcome, you're logged in!"
end

post '/login' do
  user = User.where(email: params[:email]).first
  if user && user.password == params[:password]
    login(user)
    rediret to('/')
  else
    @login_failed = true
    erb :login
  end
end

get '/logout' do

end