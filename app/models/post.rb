class Post < ActiveRecord::Base
  attr_accessible :body, :snippet, :title
end
