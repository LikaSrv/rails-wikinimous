class ArticlesController < ApplicationController

  before_action :select_article, only: [:show, :edit]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save!
    redirect_to articles_path
  end

  def show
  end

  def edit

  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def select_article
    @article = Article.find(params[:id])
  end
end
