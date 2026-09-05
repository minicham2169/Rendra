class AccessesController < ApplicationController
  before_action :authenticate_user!

  def new
    @tweet = Tweet.find(params[:tweet_id])
    @access = @tweet.accesses.new
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @access = @tweet.accesses.new(access_params)

    if @access.save
      redirect_to @tweet, notice: "アクセス情報を登録しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @access = Access.find(params[:id])
    tweet = @access.tweet
    @access.destroy
    redirect_to tweet
  end

  private

  def access_params
    params.require(:access).permit(
      :departure_area,
      :distance,
      :required_time
    )
  end
end
