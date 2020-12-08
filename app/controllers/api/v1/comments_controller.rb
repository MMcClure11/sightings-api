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
    sighting = @comment.sighting
    if @comment.destroy
      render json: sighting, serializer: SightingShowSerializer, status: 200
    else
      render json: {error: 'Could not delete'}
    end
  end

  private

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.permit(:sighting_id, :content)
  end

end
