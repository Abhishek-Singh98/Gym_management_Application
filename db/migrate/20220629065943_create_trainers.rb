class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :Email
      t.string :Password
      t.string :Name
      t.string :Experience
      t.string :fees
      t.text :Description

      t.timestamps
    end
  end
end
