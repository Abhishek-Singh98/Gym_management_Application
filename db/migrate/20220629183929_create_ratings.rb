class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :Interior_score
      t.integer :Equipment_score
      t.integer :Gym_score
      t.integer :Trainer_score
      t.timestamps
    end
  end
end
