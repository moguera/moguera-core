class Post < ActiveRecord::Base
  belongs_to :category

  has_many :taggings
  has_many :tags, :through => :taggings
  accepts_nested_attributes_for :taggings

  has_many :post_images
  has_many :images, :through => :post_images
  accepts_nested_attributes_for :post_images

  has_many :post_users
  has_many :users, :through => :post_users
  accepts_nested_attributes_for :post_users

  has_many :post_steps
  has_many :steps, :through => :post_steps
  accepts_nested_attributes_for :post_steps
end
