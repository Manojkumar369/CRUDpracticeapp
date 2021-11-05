class CommentsController < ApplicationController
	def create
	@article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
	end

	def destroy
    @comment=Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

	private
    def comment_params
      params.require(:comment).permit(:name, :description)
    end


end
