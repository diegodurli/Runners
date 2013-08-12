class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :post_id, :author, :text
  validates_presence_of :author, message: 'You need to inform your name.'
  validates_presence_of :text, message: 'You need to post a message.'

end
