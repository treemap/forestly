class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.references :property

      t.string :type

      t.timestamps
    end
  end
end
