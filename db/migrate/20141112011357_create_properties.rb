class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.references :company

      t.string :name
      t.string :type
      t.geometry :boundaries

      t.timestamps
    end
  end
end
