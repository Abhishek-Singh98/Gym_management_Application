class AddGymIdToTrainer < ActiveRecord::Migration[6.0]
  def change
    add_column :trainers,:gym_id , :int
  end
end
