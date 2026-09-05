class ChangeTimeToIntegerInTweets < ActiveRecord::Migration[7.2]
  def up
    change_column :tweets,
                  :time,
                  :integer,
                  using: '(EXTRACT(EPOCH FROM "time") / 60)::integer'
  end

  def down
    change_column :tweets,
                  :time,
                  :time,
                  :using: '(TIME \'00:00:00\' + "time" * INTERVAL \'1 minute\')'
  end
end