class CreateSoils < ActiveRecord::Migration
  def change
    create_table :soils do |t|

      t.timestamps
    end
  end
end
