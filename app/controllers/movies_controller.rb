class MoviesController < ApplicationController

    def index
        @movies = Movie.all

        render json: @movies
    end

    def create
        @movie = Movie.create(
            title: params[:title],
            director: params[:director],
            rating: params[:rating]
        )

        redirect_to "http://localhost:3001/"
    end
end
