class CreateStops < ActiveRecord::Migration[5.1]
  def change
    create_table :stops do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :next_direction
      t.timestamps
    end
  end
end
