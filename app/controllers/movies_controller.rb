class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params['id']
    @movie = Movie.find(id)
  rescue ActiveRecord::RecordNotFound
    @movie = nil
    render file: "#{Rails.root}/public/404.html", status: 404
  end

  def new
    @movie = Movie.new
  end

  def create
  end
end
