require 'sinatra'
require 'mongo'

set :public_folder, 'public'

get '/' do
  redirect '/index.html'
end

post "/" do
  client = Mongo::Client.new('mongodb://mongodb:27017/test') 
  client[:responses].insert_one params
  redirect '/success.html'
end
