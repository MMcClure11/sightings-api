class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]


  def index
    comments = Comment.all
    render json: comments, status: 200
  end

  def create
    comment = current_user.comments.create(comment_params)
    render json: comment
  end

  def destroy
    @comment.destroy
    render json: {notice: 'Comment destroyed'}, status: 200
  end

  private

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.permit(:sighting_id, :content)
  end

end
