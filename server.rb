# encoding: utf-8

require 'sinatra'  # Web server

get '/' do
  erb :index
end

get '/cv' do
  erb :cv
end

get '/projects' do
  erb :projects
end

# Blogging
require './blog'
blog = Blog::Blog.load('posts')

get '/blog' do
  @recent_posts = blog.public.sorted_by_date
  erb :'blog/index'
end

get '/blog/:title' do |title|
  fail Sinatra::NotFound unless post = blog.post_exists?(title)
  erb :'blog/article', locals: { blog_html: markdown(post.content) }
end
