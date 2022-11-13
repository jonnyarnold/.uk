# encoding: utf-8
require 'fileutils'
require 'tilt'

require './blog'

def copy_dir(input_path, output_path)
  FileUtils.copy_entry input_path, output_path
end

copy_dir('public', 'build')

def render(input_path, opts={})
  layout_path = opts[:layout_path]
  context = nil
  locals = opts[:locals] or {}
  if layout_path.nil?
    Tilt.new(input_path).render(context, locals)
  else
    Tilt.new(layout_path).render {
      Tilt.new(input_path).render(context, locals)
    }
  end
end

def render_file(input_path, output_path, opts={})
  dir = File.dirname(output_path)
  unless File.directory?(dir)
    FileUtils.mkdir_p(dir)
  end
  File.open(output_path, "w") do |file|
    file.write(render(input_path, opts))
  end 
end

render_file('templates/scss/index.scss', 'build/css/index.css')
render_file('templates/erb/index.erb', 'build/index.html', layout_path: 'templates/erb/layout.erb')
render_file('templates/erb/cv.erb', 'build/cv.html', layout_path: 'templates/erb/layout.erb')
# render_file('templates/erb/manifesto.erb', 'build/manifesto.html', layout_path: 'templates/erb/layout.erb')

projects = Blog::Blog.load('projects', '/projects')
render_file('templates/erb/projects/index.erb', 'build/projects/index.html', layout_path: 'templates/erb/layout.erb', locals: { recent_posts: projects.sorted_by_date })
projects.each do |post|
  render_file('templates/erb/projects/article.erb', "build/projects/#{post.url_title}.html", layout_path: 'templates/erb/layout.erb', locals: { post: post })
end

blogs = Blog::Blog.load('posts', '/blog').public
render_file('templates/erb/blog/index.erb', 'build/blog/index.html', layout_path: 'templates/erb/layout.erb', locals: { recent_posts: blogs.sorted_by_date })
blogs.each do |post|
  render_file('templates/erb/blog/article.erb', "build/blog/#{post.url_title}.html", layout_path: 'templates/erb/layout.erb', locals: { post: post })
end
