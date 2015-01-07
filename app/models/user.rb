class User < ActiveRecord::Base
  belongs_to :role

  has_many :posts, :through => :post_users
  has_many :post_users
end
