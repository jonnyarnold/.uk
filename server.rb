# encoding: utf-8

require 'sinatra'  # Web server
require './blog'   # Blogging micro-service

get '/' do
  erb :index
end

get '/cv' do
  erb :cv
end

projects = Blog::Blog.load('projects', '/projects')
get '/projects' do
  @recent_posts = projects.sorted_by_date
  erb :'projects/index'
end

get '/projects/:title' do |title|
  fail Sinatra::NotFound unless post = projects.post_exists?(title)
  erb :'projects/article', locals: { blog_html: markdown(post.content) }
end

blog = Blog::Blog.load('posts', '/blog')
get '/blog' do
  @recent_posts = blog.public.sorted_by_date
  erb :'blog/index'
end

get '/blog/:title' do |title|
  fail Sinatra::NotFound unless post = blog.post_exists?(title)
  erb :'blog/article', locals: { blog_html: markdown(post.content) }
end
