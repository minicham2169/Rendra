class Tweet < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many :likes, dependent: :destroy
    has_many :accesses, dependent: :destroy
    def kinds_place=(value)
    if value.is_a?(Array)
      super(value.reject(&:blank?).join(","))
    else
      super
    end
  end

  def kinds_place_array
    kinds_place.to_s.split(",")
  end

  def target=(value)
    if value.is_a?(Array)
      super(value.reject(&:blank?).join(","))
    else
      super
    end
  end

  def target_array
    target.to_s.split(",")
  end

  def season=(value)
    if value.is_a?(Array)
      super(value.reject(&:blank?).join(","))
    else
      super
    end
  end

  def season_array
    season.to_s.split(",")
  end
end
