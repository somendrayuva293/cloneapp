class CommentsController < ApplicationController
	  def index
			@comments = current_user.comments
		end
			
		def show
			@comment = current_user.comments.find(params[:id])
		end
		def create
			# debugger
			@post = Post.find(params[:post_id])
			@comment = @post.comments.create(comment_params)
			redirect_to post_path(@post)
		end
	 
		private
			def comment_params
				params.require(:comment).permit(:content)
			end
			
end
