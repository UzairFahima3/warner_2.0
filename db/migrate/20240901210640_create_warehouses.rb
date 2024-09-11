class CreateWarehouses < ActiveRecord::Migration[7.2]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.text :description
      t.string :city
      t.integer :zip_code
      t.string :country
      t.decimal :area
      t.integer :user_id
      t.timestamps
    end
  end
end
