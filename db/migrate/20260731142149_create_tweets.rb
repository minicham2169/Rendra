class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :address
      t.string :image
      t.text :comment
      t.string :kinds_place
      t.string :target
      t.string :nearest
      t.time :time

      t.timestamps
    end
  end
end
