class Post < ActiveRecord::Base
  serialize :tags
  has_and_belongs_to_many :categories
end
