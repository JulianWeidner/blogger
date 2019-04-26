module ArticlesHelper

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def id_params
    params[:id]
  end

end
