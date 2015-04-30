enable :sessions

get '/login' do
  erb :login
end

post '/login' do
  user = User.where(name: params[:email]).first
  if user && user.password == params[:password]
    login(user)
    redirect to('/')
  else
    @login_failed = true
    erb :login
  end
end

get '/logout' do
  logout!
 erb :logout
end
