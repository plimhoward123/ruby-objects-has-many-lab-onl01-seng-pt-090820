class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    title.author = self
    @posts << title
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def posts
    Post.all.select {|val| val == self}
  end

  def self.post_count
    Post.all.count
  end
end
