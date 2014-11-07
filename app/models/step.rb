class Step < ActiveRecord::Base
  has_many :posts, :through => :post_steps
  has_many :post_steps

  has_many :step_images
  has_many :images, :through => :step_images
  accepts_nested_attributes_for :step_images
end
