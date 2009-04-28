class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @comment.note_id = params[:note_id]
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = 'Comment posteddd'
      redirect_to :controller => 'notes', :acton => 'show', :id => @comment.note
    else
      render :action => "new"
    end
  end

end
