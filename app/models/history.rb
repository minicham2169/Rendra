class History < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :tweet_id, uniqueness: { scope: :user_id, message: "はすでに保存済みです" }
end
