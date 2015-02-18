class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create!(comment_params)
    redirect_to @blog
  end

  private
    def comment_params
      params.require(:comment).permit(:blog_id, :comment, :body)
    end
end
