class UsersController < ApplicationController
     def show
        @user = User.find(params[:id])
        @tweets = @user.tweets  # 既存のコードに合わせて調整
        @histories = current_user.histories.includes(:tweet).order(created_at: :desc) 
    end
end
