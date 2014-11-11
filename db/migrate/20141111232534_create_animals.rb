class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :type

      t.string :name
      t.boolean :endangered, default: false, index: true

      t.timestamps
    end
  end
end
