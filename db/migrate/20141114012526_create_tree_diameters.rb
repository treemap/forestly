class CreateTreeDiameters < ActiveRecord::Migration
  def change
    create_table :tree_diameters do |t|
      t.references :unit
      t.references :tree

      t.float :diameter

      t.timestamps
    end
  end
end
