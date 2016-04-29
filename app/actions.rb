# Homepage (Root path)
get '/' do
  # erb :index
  redirect '/songs'
end

get '/songs' do 
  @songs = Song.all
  erb :'songs/index'
end

get '/songs/new' do
  erb :'songs/new'
end

post '/songs' do
  @song = Song.new(
    title: params[:title], 
    artist: params[:artist], 
    description: params[:description], 
    url: params[:url], 
    image: params[:image]
    )
  @song.save
    redirect '/songs'
end

delete '/songs/:id' do 
  @song = Song.delete(params[:id])
    redirect '/songs'
end