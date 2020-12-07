class Api::V1::CommentsController < ApplicationController

  def index
    comments = Comment.all
    render json: comments, status: 200
  end

  def create
    comment = current_user.comments.create(comment_params)
    render json: comment
  end

  private

  def comment_params
    params.permit(:sighting_id, :content)
  end

end
