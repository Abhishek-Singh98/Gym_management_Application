class CreateTrainees < ActiveRecord::Migration[6.0]
  def change
    create_table :trainees do |t|
      t.string :Email
      t.string :Password
      t.string :Name
      t.string :City
      t.string :Contact
      t.text :Description
      add_column :trainees, :gym_id, :int
      t.timestamps
    end
  end
end
