class FavoritesController < ApplicationController
	before_action :require_signin
	before_action :set_movie

	def create
		@movie.favorites.create!(user: current_user)
		redirect_to @movie, notice:"Glad you liked it!"
		
		
	end

	def destroy
	current_user.favorites.find_by(params[:id]).destroy
	redirect_to @movie, notice:"Sorry you didnt like it afterall!"
	end

	private
	def set_movie
		@movie = Movie.find(params[:movie_id])
	end

end
