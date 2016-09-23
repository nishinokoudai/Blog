class CommentsController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment])
       if @comment.save
       	redirect_to post_path(@post)
       else
        render :template => "posts/show"
       end 
   end

   private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :post_id)
    end
end
