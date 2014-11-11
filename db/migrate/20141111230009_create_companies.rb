class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :owner_id

      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
