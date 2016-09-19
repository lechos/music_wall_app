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
  if @song.save
    redirect to '/songs'
  else 
    redirect to '/songs'
  end
end

delete '/songs/title/delete' do
  @song = Song.find_by(
    title: params[:title], 
    artist: params[:artist]
  )
  #@song = Song.find(params[:id])
  # @song = Song.where(:id => params[:id]).first

  if @song.delete
    redirect to '/songs'
  else
    redirect to '/songs'
  end
end

# TODO: error if ID query does not exist in database
#
#validations: error if fields empty or mistake exists
#find closest match
#youtube api: embed videos
#implement login
#redesign front-end stuff
#learn angular this week
