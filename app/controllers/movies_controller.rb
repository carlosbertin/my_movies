class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :create_classification]
  before_action :authenticate_user!, except: [:index, :show]
 
  def index
    @movies = Movie.all
  end
 
  def show
  end
 
  def edit
  end
 
  def update
    if @movie.update(movie_params)
      if params[:remove_avatar]
        @movie.remove_avatar!
        @movie.save
      end
      redirect_to action: :show, id: @movie.id
    else
      render :edit, id: @movie.id
    end
  end
 
  def new
    @movie = Movie.new
  end
 
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to action: :show, id: @movie.id
    else
      render :new
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 
  def create_classification
    classification = Classification.new(classification_params)
    classification.user = current_user
    classification.movie = @movie
    if classification.save
      flash[:notice] = "Score updated! "
    else
      flash[:alert] = "Could not update score. The score must be a number (0 - 10)"
    end
    redirect_to action: :show, id: @movie.id
  end
 
  private
 
  def movie_params
    params.require(:movie).permit(:title, :release_date, :description, :avatar, :remove_avatar)
  end
 
  def classification_params
    params.require(:classification).permit(:score)
  end
 
  def set_movie
    id = params['id']
    @movie = Movie.find(id)
  rescue ActiveRecord::RecordNotFound
    render file: "#{Rails.root}/public/404.html", status: 404
  end
end