class Access < ApplicationRecord
  belongs_to :tweet
  validates :departure_area, presence: true
  validates :distance, numericality: { greater_than_or_equal_to: 0 }
  validates :required_time, numericality: { greater_than_or_equal_to: 0 }
end
