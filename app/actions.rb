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
    redirect to '/songs'
end

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
#
#validations: error if fields empty or mistake exists
#find closest match
#youtube api: embed videos
#implement login
#redesign front-end stuff
#learn angular this week

#search for and follow friends
#***rate/review songs
#recommend songs?
#share songs
#
