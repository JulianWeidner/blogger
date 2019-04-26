class ArticlesController < ApplicationController
  include ArticlesHelper
  
  def index
    @articles = Article.all
  end

  def new
    puts "WIP"
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    flash.notice = "Created '#{@article.title}'"
    redirect_to article_path(@article)

  end

  def destroy
    @article = Article.find(id_params)
    @article.destroy
    
    redirect_to articles_path(@articles)
    flash.notice = "Article Deleted"
  end

  def edit
    @article = Article.find(id_params)
  end 

  def update
    @article = Article.find(id_params)
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' updated!"

    redirect_to article_path(@article)
  end
  
  def show
    @article = Article.find(id_params)
    @comment = Comment.new
    @comment.article_id = @article.id
  end
end
