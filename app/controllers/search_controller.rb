class SearchController < ApplicationController

	before_action :authenticate_user!

	def index
	    @user_or_book = params[:option]
	    @how_search = params[:choice]
	    
	    if @user_or_book == "1"
	      @users = User.index(params[:search], @user_or_book, @how_search)
	    else
	      @books = Book.index(params[:search], @user_or_book, @how_search)
	    end
	 end
end