class Author 
  attr_accessor :name 
  
  @@total = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end 

  def add_post(new_post)
    self.posts << new_post 
    new_post.author = self 
    @@total +=1
  end

  def add_post_by_title(name)
    new_post = Post.new(name)
    self.posts << new_post
    new_post.author = self 
    @@total +=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@total
  end 

end