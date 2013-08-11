class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  attr_accessible :author, :text, :title
  validates_presence_of :author, message: 'You need to inform your name.'
  validates_presence_of :text, message: 'You need to post a message.'

  def self.getDescPosts
     Post.find(:all, :order => 'created_at DESC', limit: 10)
  end
end