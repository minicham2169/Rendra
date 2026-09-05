class CreateAccesses < ActiveRecord::Migration[7.2]
  def change
    create_table :accesses do |t|
      t.references :tweet, null: false, foreign_key: true
      t.string :departure_area
      t.integer :distance
      t.integer :required_time

      t.timestamps
    end
  end
end
