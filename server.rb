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
def post_path(title)
  "./posts/#{title}.md"
end

def post_exists?(title)
  Dir.glob(post_path(title)).any?
end

def post_html(title)
  file_contents = File.read(post_path(title))
  markdown(file_contents)
end

# Blogging
require './blog'
blog = Blog::Blog.load('posts')

get '/blog' do
  @recent_posts = blog.posts
  erb :blog_index
end

get '/blog/:title' do |title|
  fail Sinatra::NotFound unless post_exists?(title)
  erb :blog, locals: { blog_html: post_html(title) }
end
