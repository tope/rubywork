class RecipesController < ApplicationController

  def index
    @recipes = Recipe.find(:all)
    @title = "All recipes"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    if @recipe.save
      flash[:notice] = 'Recipe was successfully created'
      redirect_to  :action => 'show', :id => @recipe
    else
      render :action => "new"
    end

  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update_attributes(params[:recipe])
      flash[:notice] = 'Recipe was successfully updated'
      redirect_to :action => 'show', :id => @recipe
    else
      render :action => "edit"
    end 
 
  end



































end
