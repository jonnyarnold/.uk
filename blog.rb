# encoding: utf-8

# BLOG.RB
# Micro-blog service

module Blog
  # A Blog is a collection of Posts.
  class Blog
    def self.load(post_path)
      new(post_path)
    end

    attr_accessor :posts

    def initialize(post_path)
      @posts = md_in(post_path).map do |post_file|
        Post.new(post_file)
      end
    end

    # Gets all the .md files in the given path.
    def md_in(path)
      Dir.glob("#{path}/*.md")
    end
  end

  # A Post is an article for a Blog.
  class Post
    def initialize(post_path)
      @path = post_path
      @url = '/blog/' + post_path[/\/([^\.]*).md/, 1]
    end

    attr_accessor :url
    METADATA_KEYS = [:title, :tags]

    # Accessors
    METADATA_KEYS.each do |key|
      define_method(key) do
        metadata[key]
      end
    end

    private

    def metadata
      if @metadata.nil?
        @metadata = {}

        content = File.readlines(@path)
        METADATA_KEYS.each do |key|
          @metadata[key] = send("parse_#{key}", content)
        end
      end

      @metadata
    end

    def parse_title(content)
      # Of the form: # Title
      content[0][/^\# (.*)$/, 1]
    end

    def parse_tags(content)
      # Of the form: <!--- tag1,tag2 -->
      all_tags = content[1][/^\<\!\-\-\- (.*) \-\-\>$/, 1]

      return [] if all_tags.nil?
      all_tags.split(',').map(&:to_sym)
    end
  end
end
