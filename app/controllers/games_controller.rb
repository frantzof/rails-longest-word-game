require 'open-uri'
require 'json'

class GamesController < ApplicationController
	def new
		@letters = [*('A'..'Z')].sample(10).join
	end

	def included?(guess, grid)
  	guess.chars.all? { |letter| guess.count(letter) <= grid.count(letter) }
	end

	def score
		included?(params[:new], @letters)	
	end

end
