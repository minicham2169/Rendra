class AddSeasonAndIndoorOutdoorToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :season, :string
    add_column :tweets, :indoor_outdoor, :string
  end
end
