class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def create
    d = Director.new
    d.name = params[:name]
    d.save
    redirect_to directors_url
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    d = Director.find(params[:id])
    d.name = params[:name]
    d.save
    redirect_to directors_url
  end

  def destroy
    d = Director.find(params[:id])
    d.destroy
    redirect_to "http://localhost:3000/directors"
  end
end
