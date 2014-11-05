class Role < ActiveRecord::Base
  has_many :authors
end
