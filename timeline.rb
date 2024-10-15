require './blog'

Dateish = Data.define(:year, :month, :day) do
  include Comparable

  def self.from_date(date)
    self.new(date.year, date.month, date.day)
  end

  def <=>(other)
    return unless other.is_a?(self.class)

    year_compare = year <=> other.year
    return year_compare unless year_compare == 0

    month_compare = month <=> other.month
    return month_compare unless month_compare == 0

    return day <=> other.day
  end

  MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

  def to_s
    if @day
      return "#{@day} #{MONTHS[@month - 1]} #{@year}"
    elsif @month
      return "#{MONTHS[@month - 1]} #{@year}"
    else
      return "#{@year}"
    end
  end
end

module Timeline
  Event = Data.define(:date, :type, :description, :url) do
    include Comparable

    def <=>(other)
      return unless other.is_a?(self.class)
      date <=> other.date
    end
  end

  class Timeline
    include Enumerable

    def self.load
      new([
        *self.blog_events,
        *SITE_EVENTS,
        *LIFE_EVENTS,
      ])
    end

    SITE_EVENTS = [
      Event.new(
        date: Dateish.new(2024, 10, nil),
        type: :site,
        description: "Rebranded jonnyarnold.uk",
        url: nil
      ),
      Event.new(
        date: Dateish.new(2022, 11, nil),
        type: :site,
        description: "Moved to Render",
        url: nil
      ),
      Event.new(
        date: Dateish.new(2017, 8, nil),
        type: :site,
        description: "Rebranded jonnyarnold.uk",
        url: nil
      ),
      Event.new(
        date: Dateish.new(2014, 7, 30),
        type: :site,
        description: "Launched jonnyarnold.uk on Heroku",
        url: nil
      ),
    ]

    LIFE_EVENTS = [
      Event.new(
        date: Dateish.new(1989, 4, nil),
        type: :life,
        description: "Born",
        url: nil
      )
    ]

    def self.blog_events
      blogs = Blog::Blog.load('posts', '/blog').public
      return blogs.map do |post|
        Event.new(
          date: Dateish.from_date(post.event_date || post.publish_date),
          type: :blog,
          description: post.title,
          url: post.url
        )
      end
    end

    def each(&block)
      @events.each(&block)
    end

    private

    def initialize(events)
      @events = events.sort.reverse
    end
  end

  

  TIMELINE = Timeline::load
end

