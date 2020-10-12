class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @posts = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if author != nil
      self.author.name
    else
      nil
    end
  end
end
