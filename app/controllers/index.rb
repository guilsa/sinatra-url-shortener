get '/' do
  # Look in app/views/index.erb
  @url = Url.all
  erb :index
end

post '/urls' do
  url = params[:url]
  short_url = Url.shorten_it(params[:url])
  Url.create(url: url, short_url: short_url)
  redirect '/'
end

get '/:short_url' do
  short_url = Url.find(params[:short_url])
  puts "#{short_url.inspect}"
  redirect "#{short_url.url}"
end



