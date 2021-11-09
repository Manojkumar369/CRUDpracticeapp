class ArticlesController < ApplicationController
  def home

  end

  def cantact_us

  end

  def index
    @article=Article.all
    redirect_to root_path if !current_user 
  end

  def show
    @article=Article.find(params[:id])
  end

  def new
    @article=Article.new
  end
  
  def create
    @article=Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article=Article.find(params[:id])
  end

  def update
    @article=Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private 
  def article_params
    params.require(:article).permit(:author, :reviwer, :prined_on)
  end

   


  
end
