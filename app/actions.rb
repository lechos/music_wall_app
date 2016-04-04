# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do 
  @songs = Song.all
  erb :'song_list/index'
end

get '/songs/new' do
  erb :'/song_list/new'
end