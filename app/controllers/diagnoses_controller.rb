class DiagnosesController < ApplicationController
  def index
  end

  def result
  @departure_area = params[:departure_area]
  @kinds_place = params[:kinds_place]
  @target = params[:target]
  @season = params[:season]
  @indoor_outdoor = params[:indoor_outdoor]

  @tweets = Tweet.where(address: @departure_area)

  if @kinds_place.present?
    @tweets = @tweets.where("kinds_place LIKE ?", "%#{@kinds_place}%")
  end

  if @target.present?
    @tweets = @tweets.where("target LIKE ?", "%#{@target}%")
  end

  if @season.present?
    @tweets = @tweets.where(
      "season LIKE ? OR season = '' OR season IS NULL",
      "%#{@season}%"
    )
  end

  if @indoor_outdoor.present?
    @tweets = @tweets.where(indoor_outdoor: [@indoor_outdoor, "どちらもあり"])
  end

  @tweets = @tweets.distinct
end
end
