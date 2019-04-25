class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def new
    puts "WIP"
  end
  
  def show
    @article = Article.find(params[:id])
  end
end
