class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy] #é executado sempre que as ações show, edit e update forem acionadas.

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to action: :index
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :release_date, :description)
  end

end
