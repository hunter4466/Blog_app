class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.text = params[:comment][:text]
    @comment.author_id = ApplicationController.current_user.id
    @comment.post_id = params[:id]
    if @comment.save
      flash[:notice] = 'Comment is successfully added'
      redirect_to user_post_url(id: params[:id], user_id: params[:user_id])
    else
      flash[:notice] = 'Comment could not be added'
      render :new
    end
  end
end
