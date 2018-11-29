
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
  File.read(File.join('public', 'index_2.html'))
end

get '/seasons' do

    @month=params[:month].to_i
    erb :seasons
end



