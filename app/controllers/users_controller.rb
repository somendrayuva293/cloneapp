class UsersController < ApplicationController

    def follow
      post = Post.find(params[:id])
      @user = post.user
      current_user.followees << @user
      redirect_to post_path
    end

    def unfollow
      post = Post.find(params[:id])
      @user = post.user
      current_user.followed_users.find_by(followee_id: 
      @user.id).destroy
      redirect_to post_path
    end

end
