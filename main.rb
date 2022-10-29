require 'sinatra'
require 'sinatra/reloader'

require './functions/put_item'
require './functions/get_item'

get '/put_item' do
    put_item()
end

get '/get_item' do
    get_item()
end
