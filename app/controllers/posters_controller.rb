class PostersController < ApplicationController

  def index
    @posters = Poster.all
  end

  def new
    @poster = Poster.new
  end

  def show
    @poster = Poster.find(params[:id])
  end

end
