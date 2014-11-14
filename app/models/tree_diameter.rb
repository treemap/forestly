class TreeDiameter < ActiveRecord::Base
  has_one :tree

  belongs_to :inventory
end
