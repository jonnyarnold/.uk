# encoding: utf-8

# BLOG.RB
# Micro-blog service

module Blog
  # A Blog is a collection of Posts.
  class Blog
    include Enumerable

    def self.load(post_path)
      posts = md_in(post_path).map do |post_file|
        Post.new(post_file)
      end

      new(posts)
    end

    # Gets all the .md files in the given path.
    def self.md_in(path)
      Dir.glob("#{path}/*.md")
    end

    def initialize(posts)
      @posts = posts
    end

    def each(&block)
      @posts.each(&block)
    end

    def sorted_by_date
      Blog.new(sort_by { |p| p.last_updated || p.publish_date }.reverse!)
    end

    def public
      Blog.new(select { |p| !p.hidden? })
    end
  end

  # A Post is an article for a Blog.
  class Post
    def initialize(post_path)
      @path = post_path
      @url = '/blog/' + post_path[/\/([^\.]*).md/, 1]
    end

    attr_accessor :url
    METADATA_KEYS = [:title, :tags, :publish_date, :last_updated]

    # Accessors
    METADATA_KEYS.each do |key|
      define_method(key) do
        metadata[key]
      end
    end

    def hidden?
      publish_date.nil?
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
      # Of the form: <!--- tags:tag1,tag2 -->
      all_tags = content[1][/^\<\!\-\-\- (.*) \-\-\>$/, 1]

      return [] if all_tags.nil?
      all_tags.split(',').map(&:to_sym)
    end

    def parse_publish_date(content)
      # Of the form: *Posted by Jonny Arnold on 25th April 1989*
      publish_date_str = content[2][/^\*Posted by (.*) on (.*)\*$/, 2]

      return nil if publish_date_str.nil?
      Date.parse(publish_date_str)
    end

    def parse_last_updated(content)
      # Of the form: *Updated on 25th April 1989*
      updated_date_str = content[3][/^\*Updated on (.*)\*$/, 1]

      return publish_date if updated_date_str.nil?
      Date.parse(updated_date_str)
    end
  end
end
