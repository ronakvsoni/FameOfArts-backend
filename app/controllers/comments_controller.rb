class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: CommentSerializer.new(comments)
  end

  def show
    comment = Comment.find_by(id: params[:id])
    render json: CommentSerializer.new(comment)
  end

  def create
    comment = Comment.create(comment_params)
    render json: CommentSerializer.new(comment)
  end

  def edit
    comment = Comment.update(comment_params)
    render json: CommentSerializer.new(comment)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: { info: 'Deleted' }
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :image_id, :comment_info)
  end
end
