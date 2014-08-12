require 'sinatra'  # Web server

get '/' do
  erb :index, :layout => :_layout
end

get '/cv' do
  erb :cv, :layout => :_layout
end

get '/projects' do
  erb :projects, :layout => :_layout
end
