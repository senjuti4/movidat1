class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy


  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.create(comment_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = movie.find(params[:movie_id])
    @comment = @movie.comments.find(params[:id])
    @comment.destroy
    redirect_to movie_path(@movie)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
