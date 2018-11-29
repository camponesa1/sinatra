require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do # this part is optional, so that something comes up when you don't specify a URI
  File.read(File.join('public', 'index.html'))
end

get '/count' do
    @count=params[:count].to_i
    erb :count
end
