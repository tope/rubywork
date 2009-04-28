class NotesController < ApplicationController
  def index
    @notes = Note.find(:all)
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(params[:note])
    if @note.save
      flash[:notice] = 'Goal addedd'
      redirect_to :action => 'show', :id => @note
    else
      render :action => "new"
    end
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(params[:note])
      flash[:notice] = 'Goal updateddd'
    else
      render :action => "edit"
    end
  end























end
