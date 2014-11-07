class Image < ActiveRecord::Base
  has_many :posts, :through => :post_images
  has_many :post_images

  has_many :steps, :through => :step_images
  has_many :step_images
end
