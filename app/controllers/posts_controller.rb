class PostsController < ApplicationController
    def index
      @posts = Post.all
      @post = Post.new
    end
    #
    def new
      @post = Post.new
    end  
  
    def create
      @user= current_user
      @post = @user.posts.new(post_params)
      @post.save
    # byebug
      redirect_to root_path(@post)
      # redirect_to @post
    end
    
    def show
        @post= Post.find(params[:id])
    end
    
    def destroy
      @post = Post.find(params[:id])
      # debugger

      if @post.destroy
        flash[:success] = 'Post was successfully deleted.'
        redirect_to posts_path
      else
        flash[:error] = 'Something went wrong'
        redirect_to posts_url
      end
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      #debugger
      @post = Post.find(params[:id])
        if @post.update(post_params)
          flash[:success] = "Post was successfully updated"
          redirect_to @post
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    private
    def post_params
        params.require(:post).permit(:postadd,:user_id)
    end
end
# (post_params)