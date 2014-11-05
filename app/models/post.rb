class Post < ActiveRecord::Base
  belongs_to :category

  has_many :taggings
  has_many :tags, :through => :taggings
  accepts_nested_attributes_for :taggings

  has_many :post_images
  has_many :images, :through => :post_images
  accepts_nested_attributes_for :post_images


  has_many :post_authors
  has_many :authors, :through => :post_authors
  accepts_nested_attributes_for :post_authors
end
