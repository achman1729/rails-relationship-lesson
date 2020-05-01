class BookListItemsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    # current_user is a helper method. Each user has a book created. This access the book for the current user from User model 
    @book = current_user.books
  end

end
