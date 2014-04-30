class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.save
    redirect_to :back
  end

  def delete
    comment = Comment.find_by_id params[:id]
    comment.destroy
    redirect_to :back
  end

  private
  def comment_params
    params.permit(:content, :video_id)
  end
end

