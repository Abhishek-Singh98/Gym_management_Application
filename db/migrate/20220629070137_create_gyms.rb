class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :email
      t.string :Password
      t.string :Name
      t.string :City
      t.string :Owner_name
      t.string :fees
      t.text :Description

      t.timestamps
    end
  end
end
