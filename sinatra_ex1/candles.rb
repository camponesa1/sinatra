
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
  File.read(File.join('public', 'index_1.html'))
end

get '/candles' do

    @candles=params[:candles].to_i
    erb :candles
end
