class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)

    redirect_to article_path(comment.article_id)
  end

  def new
    @comment = Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:article_id, :body, :user_id)
  end

end
