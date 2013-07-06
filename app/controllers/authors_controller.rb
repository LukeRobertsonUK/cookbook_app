class AuthorsController < ApplicationController

  def index
    @authors = Author.order('name DESC')
  end

  def show
    @author = Author.find(params[:id])
  end


end