class CreateWildlives < ActiveRecord::Migration
  def change
    create_table :wildlives do |t|
      t.references :user
      t.references :company
      t.references :animal

      t.point :lonlat, geographic: true
      t.datetime :checked_at, default: Time.now

      t.timestamps
    end
  end
end
