require 'sinatra'
require 'sinatra/reloader'

get '/' do
    'hi boy'
end

get '/frank-says' do
    'Put this in your pipe & smoke it!'
end
