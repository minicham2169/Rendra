class ChangeTimeToIntegerInTweets < ActiveRecord::Migration[7.2]
  def up
    change_column :tweets,
                  :time,
                  :integer,
                  using: '"time"::integer'
  end

  def down
    change_column :tweets, :time, :string
  end
end