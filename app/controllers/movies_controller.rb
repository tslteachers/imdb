class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end

  def new
  end

  def create
    new_movie = Movie.new
    new_movie.title = params[:title]
    new_movie.year = params[:year]
    new_movie.director_id = params[:director_id]
    new_movie.save
    redirect_to movies_url
  end

  def edit
    @movie = Movie.find_by_id(params[:id])
  end

  def update
    movie = Movie.find_by_id(params[:id])
    movie.title = params[:title]
    movie.year = params[:year]
    movie.save
    redirect_to movies_url
  end

  def destroy
    movie = Movie.find_by_id(params[:id])
    movie.destroy
    redirect_to movies_url
  end

end
