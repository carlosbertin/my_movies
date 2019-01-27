class DirectorController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
  end

  def new
  end

  def create
  end
end
