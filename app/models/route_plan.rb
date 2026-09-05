class RoutePlan < ApplicationRecord
  belongs_to :tweet
  has_many :stops, 
  dependent: :destroy
end
