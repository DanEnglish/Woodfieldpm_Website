class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :apt_number
      t.boolean :for_rent
      t.integer :building_id

      t.timestamps null: false
    end
  end
end
