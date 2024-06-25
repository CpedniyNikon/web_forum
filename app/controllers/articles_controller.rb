class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]


  def create
    article = Article.create(article_params)

    redirect_to article_path(article)
  end

  def index
    @articles = Article.all
  end


  def show
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