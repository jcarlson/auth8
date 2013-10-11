class Post < ActiveRecord::Base
  attr_accessible :body, :slug, :title
end
