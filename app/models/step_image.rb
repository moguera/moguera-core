class StepImage < ActiveRecord::Base
  belongs_to :step
  belongs_to :image
end
