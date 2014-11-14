class TreeInventory < ActiveRecord::Base
  belongs_to :property

  has_many :tree_diameters

  def mean_tree_diameters
    tree_map = Hash.new { [] }

    self.tree_diameters.each do |td|
      tree_map[td.tree] << td.diameter
    end

    tree_means = Hash.new { 0 }
    tree_map.each do |k, v|
      tree_means[k] = v.reduce(:+) / tree_means[k].length rescue 0
    end

    # Take an average by tree.

    tree_means
  end

   # From the data collected one can calculate the number of trees per acre, the basal area, the volume of trees in an area, and the value of the timber.
end
