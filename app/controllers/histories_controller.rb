class HistoriesController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.histories.create(history_params)
    redirect_back(fallback_location: root_path, notice: "診断結果を保存")
  end

  private

  def history_params
    params.require(:history).permit(:tweet_id, :departure_area, :distance, :required_time, :kinds_place, :target)
  end
end