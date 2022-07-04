class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :description
      t.bigint :revial_id
      t.string :Revial_type
      t.belongs_to :application
      t.timestamps
    end
  end
end
