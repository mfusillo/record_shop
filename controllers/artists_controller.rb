require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/label')
also_reload('./models/*')

get '/artists' do
  @artists = Artist.all()
  erb(:"artists/index")
end

get '/artists/:id' do
  @artist = Artist.find(params[:id].to_i)
  erb(:"artists/show")
end
