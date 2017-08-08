# encoding: utf-8

require 'sinatra'  # Web server
require './blog'   # Blogging micro-service

set :views, 'templates'

get '/css/index.css' do
  scss :'scss/index'
end

get '/' do
  erb :'erb/index', layout: :'erb/layout'
end

[:cv, :manifesto].each do |page|
  get "/#{page}" do
    erb :"erb/#{page}", layout: :'erb/layout'
  end
end

projects = Blog::Blog.load('projects', '/projects')
get '/projects' do
  @recent_posts = projects.sorted_by_date
  erb :'erb/projects/index', layout: :'erb/layout'
end

get '/projects/:title' do |title|
  fail Sinatra::NotFound unless post = projects.post_exists?(title)
  erb :'erb/projects/article', locals: { blog_html: markdown(post.content) }, layout: :'erb/layout'
end

blog = Blog::Blog.load('posts', '/blog')
get '/blog' do
  @recent_posts = blog.public.sorted_by_date
  erb :'erb/blog/index', layout: :'erb/layout'
end

get '/blog/:title' do |title|
  fail Sinatra::NotFound unless post = blog.post_exists?(title)
  erb :'erb/blog/article', locals: { blog_html: markdown(post.content) }, layout: :'erb/layout'
end
