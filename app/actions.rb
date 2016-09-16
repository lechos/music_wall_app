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

# delete '/songs/:id' do |id|
#   # puts "delete pressed"
#    @song.delete(
#     id: params[:song_id]
#     )
#     redirect '/songs'
# end

delete '/songs/title/delete' do
  @song = Song.find_by(
    title: params[:title], 
    artist: params[:artist]
  )
  #@song = Song.find(params[:id])
  # @song = Song.where(:id => params[:id]).first
  @song.delete
  redirect to '/songs'
end

# TODO: error if ID query does not exist in database
# find by title rather than id