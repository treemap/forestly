class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :property

      t.geometry :boundaries

      t.timestamps
    end
  end
end
