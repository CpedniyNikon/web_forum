class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]


  def create
    Article.create(article_params)

    redirect_to root_path
  end

  def index
    @articles = Article.all
    @users = User.all
  end


  def show
    @users = User.all
    @comments = Comment.where(article_id: @article.id)
  end

  def new
    @article = Article.new
  end

  private

  def article_params
    params.require(:article).permit(:user_id, :title, :body)
  end


  def set_article
    @article = Article.find(params[:id])
  end

end
