class HistoriesController < ApplicationController
  before_action :authenticate_user!

  def create
    existing = current_user.histories.find_by(tweet_id: history_params[:tweet_id])
    if existing
      redirect_back fallback_location: root_path, notice: "この行き先はすでに保存済みです", status: :see_other
    else
      current_user.histories.create(history_params)
      redirect_back fallback_location: root_path, notice: "行き先を保存しました", status: :see_other
    end
  end

  def destroy
    @history = current_user.histories.find(params[:id])
    @history.destroy
    redirect_back fallback_location: user_path(current_user), notice: "履歴を削除しました", status: :see_other
  end

  private

  def history_params
    params.require(:history).permit(:tweet_id, :departure_area, :distance, :required_time, :kinds_place, :target)
  end
end