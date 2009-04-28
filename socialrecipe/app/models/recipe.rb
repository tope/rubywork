class Recipe < ActiveRecord::Base

  has_many	:comments
     validates_presence_of	:title, :summary, :ingredients, :instructions








end
