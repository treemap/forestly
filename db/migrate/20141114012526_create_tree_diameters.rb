class CreateTreeDiameters < ActiveRecord::Migration
  def change
    create_table :tree_diameters do |t|
      t.references :tree_inventories
      t.references :tree

      t.float :tree_size
      t.float :dbh # Diameter at breast height
      t.float :height
      t.float :crown_width

      t.text :overall_condition # health and maintenance needs, overcrowding
      t.text :possible_problems

      t.boolean :disease, default: false

      t.references :soil
      t.text :soil_condition
      t.text :root_space
      t.text :safety

      t.timestamps
    end
  end
end
