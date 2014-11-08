class Step < ActiveRecord::Base
  has_one :post_step
  has_one :post, :through => :post_step

  has_many :step_images
  has_many :images, :through => :step_images
  accepts_nested_attributes_for :step_images
end
