#Things to keep in mind:
  # - how do i find out who you are
  # - how do I find out whether u are logged in?
  # - what does password mean?

get '/' do
  @url = Url.all
  erb :index
end

post '/urls' do
  url = params[:url]
  short_url = Url.shorten_it(params[:url])
  user_id = session[:user_id]
  Url.create(url: url,
             short_url: short_url,
             click_count: 0,
             user_id: user_id)
  redirect '/'
end

#redirection
get '/:short_url' do
  url = Url.find(params[:short_url])
  url.click_count += 1
  url.save
  redirect "#{url.url}"
end
