class CreateHistories < ActiveRecord::Migration[7.2]
  def change
    create_table :histories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true
      t.string :departure_area
      t.integer :distance
      t.integer :required_time
      t.string :kinds_place
      t.string :target

      t.timestamps
    end
  end
end
