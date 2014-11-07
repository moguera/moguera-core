class PostStep < ActiveRecord::Base
  belongs_to :post
  belongs_to :step
end
