class PostersController < ApplicationController

  def index
    @posters = Poster.all
  end

  def new
    @poster = Poster.new
  end
end
