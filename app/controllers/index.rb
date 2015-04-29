get '/' do
  # Look in app/views/index.erb
  @url = Url.all
  erb :index
end

post '/urls' do
  url = params[:url]
  short_url = Url.shorten_it(params[:url])
  Url.create(url: url, short_url: short_url, click_count: 0)
  redirect '/'
end

get '/:short_url' do
  url = Url.find(params[:short_url])
  url.click_count += 1
  url.save

  redirect "#{url.url}"
end



