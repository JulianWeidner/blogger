module CommentsHelper
  def comment_params
    params.require( :comment).permit(:author_name, :body)
  end

  def article_id
    params[:article_id]
  end

end
