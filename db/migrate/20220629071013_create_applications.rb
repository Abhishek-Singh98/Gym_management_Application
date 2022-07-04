class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.belongs_to :trainee 
      t.belongs_to :trainer 
      t.belongs_to :gym 
      t.date :start_date
      t.date :end_date
      t.text :status
      t.timestamps
    end
  end
end
