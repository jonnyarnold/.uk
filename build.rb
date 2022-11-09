# encoding: utf-8
require 'fileutils'
require 'tilt'

# scss/index.scss -> /css/index.css
# erb/index.erb -> /
def render(input_path, opts={})
  layout_path = opts[:layout_path]
  if layout_path.nil?
    Tilt.new(input_path).render
  else
    Tilt.new(layout_path).render {
      Tilt.new(input_path).render
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
render_file('templates/erb/cv.erb', 'build/cv.html')


# erb/cv.erb -> /cv
# erb/manifesto.erb -> /manifesto
# erb/projects/index.erb -> /projects
# erb/projects/article.erb + posts/*.md -> /projects/*


# get '/css/index.css' do
#   scss :'scss/index'
# end

# get '/' do
#   erb :'erb/index', layout: :'erb/layout'
# end

# [:cv, :manifesto].each do |page|
#   get "/#{page}" do
#     erb :"erb/#{page}", layout: :'erb/layout'
#   end
# end

# projects = Blog::Blog.load('projects', '/projects')
# get '/projects' do
#   @recent_posts = projects.sorted_by_date
#   erb :'erb/projects/index', layout: :'erb/layout'
# end

# get '/projects/:title' do |title|
#   fail Sinatra::NotFound unless post = projects.post_exists?(title)
#   erb :'erb/projects/article', locals: { blog_html: markdown(post.content) }, layout: :'erb/layout'
# end

# blog = Blog::Blog.load('posts', '/blog')
# get '/blog' do
#   @recent_posts = blog.public.sorted_by_date
#   erb :'erb/blog/index', layout: :'erb/layout'
# end

# get '/blog/:title' do |title|
#   fail Sinatra::NotFound unless post = blog.post_exists?(title)
#   erb :'erb/blog/article', locals: { blog_html: markdown(post.content) }, layout: :'erb/layout'
# end
