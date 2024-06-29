class CommentsController < ApplicationController

  before_action :set_comment, only: [:show]


  def create
    comment = Comment.create(comment_params)

    redirect_to article_path(comment.article_id)
  end

  def index
    @comment = Comment.all
  end


  def show
  end

  def new
    @comment = Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:article_id, :body, :user_id)
  end


  def set_comment
    @comment = Comment.find(params[:id])
  end

end
