enable :sessions

get '/login' do
  erb :login
end

post '/login' do
  @password = params[:password]
  "Welcome, you're logged in!"
end
