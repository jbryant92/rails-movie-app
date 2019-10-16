class MoviesController < ApplicationController
  def index
    render json: Movie.all
  end

  def show
    render json: movie
  end

  def update
    movie.update(movie_params)
    render json: movie
  end

  def create
    movie = Movie.create(movie_params)
    render json: movie
  end

  def delete
    movie.destroy!
    render :success
  end

  def movie
    @movie ||= Movie.find(movie_find_params[:id])
  end

  def movie_find_params
    params.permit(:id)
  end

  def movie_params
    params.require(:movie).permit(:title, :release_date, :country)
  end
end
