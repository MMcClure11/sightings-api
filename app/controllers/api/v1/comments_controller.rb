class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :destroy]


  def index
    comments = Comment.all
    render json: comments, status: 200
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: 200
    else
      error_resp = {
        error: sighting.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update
    sighting = @comment.sighting
    if @comment.update(content: params[:content])
      render json: sighting, serializer: SightingShowSerializer, status: 200
    else
      render json: {error: 'Could not update'}
    end
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
    params.permit(:sighting_id, :content, :user_id)
  end

end
