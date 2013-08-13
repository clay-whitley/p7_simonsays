get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/color' do
  content_type :json
  #Create and return a JSON object with the random cell and color given below.
  cell= rand(0..8)
  color= "#" + "%06x" % (rand * 0xffffff)
  {color: color, cell: cell}.to_json
end