require 'sinatra'  # Web server

get '/' do
  erb :index, :layout => :_layout
end

get '/cv' do
  erb :cv, :layout => :_layout
end
