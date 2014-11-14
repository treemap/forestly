class CreateTreeInventories < ActiveRecord::Migration
  def change
    create_table :tree_inventories do |t|
      t.references :property

      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
