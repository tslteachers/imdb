class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    x = 1
    @movie = Movie.find_by_id(params[:id])
  end

  def new
    @greeting = "Wazzzzzup!"
  end

  def create
    new_movie = Movie.new
    new_movie.title = params[:title]
    new_movie.year = params[:year]
    new_movie.save
    redirect_to "http://localhost:3000/movies"
  end

  def edit
    @movie = Movie.find_by_id(params[:id])
  end

  def update
    movie = Movie.find_by_id(params[:id])
    movie.title = params[:title]
    movie.year = params[:year]
    movie.save
    redirect_to "http://localhost:3000/movies"
  end

  def destroy
    movie = Movie.find_by_id(params[:id])
    movie.destroy
    redirect_to "http://localhost:3000/movies"
  end

end
