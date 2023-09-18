class MoviesController < ApplicationController
  def index
    if params[:search_by_title].present?
      @movies = Movie.search_by_title(params[:search_by_title])
    else
      @movies = Movie.all
    end
  end
end
