class CreateStops < ActiveRecord::Migration[7.2]
  def change
    create_table :stops do |t|
      t.references :route_plan, null: false, foreign_key: true
      t.string :name
      t.string :stop_type
      t.integer :position
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
