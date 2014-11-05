class Author < ActiveRecord::Base
  belongs_to :role

  has_many :posts, :through => :post_authors
  has_many :post_authors
end
