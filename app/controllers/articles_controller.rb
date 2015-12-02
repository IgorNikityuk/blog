class ArticlesController < ApplicationController

  def index
    if params[:category] and params[:sub_category]
      @articles = Article.where(category: params[:category], sub_category: params[:sub_category])
    elsif params[:period]
      @articles = Article.where("created_at > ?", params[:period])
    else
      @articles = Article.all
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save 
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def destroy_all
    Article.delete_all
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :avatar, :category, :sub_category)
  end
end
