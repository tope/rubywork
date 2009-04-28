class CommentsController < ApplicationController



  def new
    @comment = Comment.new
    @comment.recipe_id = params[:recipe_id]
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      redirect_to :controller => 'recipes', :action => 'show', :id => @comment.recipe
    else
      render_action 'new' 
    end
  end











end
