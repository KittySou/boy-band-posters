class PostersController < ApplicationController
  def index
    @posters = Poster.all
    if params[:query].present?
      @posters = Poster.global_search(params[:query])
    end
  end

  def new
    @poster = Poster.new
  end

  def show
    @poster = Poster.find(params[:id])
  end

  def create
    @poster = Poster.create(poster_params)
    @poster.user = current_user
    if @poster.save
      redirect_to posters_path(@poster)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def poster_params
    params.require(:poster).permit(:band_name, :description, :price_per_day, :height, :width, :photo)
  end
end
