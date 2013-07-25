class Post < ActiveRecord::Base
  attr_accessible :author, :text, :title
end
