class Page < ActiveRecord::Base
  attr_accessible :title, :body, :keywords, :description, :slug
end
