class BooksController < ApplicationController
  # uthenticate the user only if the action is new
  before_action :authenticate_user!, only: :new
  before_action :authorise, only: 

  def index
  end

  def new
    @book = Book.new
    @author = Author.all
    @genre = Genre.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @author = Author.all
    @genre = Genre.all
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      flash[:alert] = @book.errors.full_messages.join()
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
    @author = Author.all
    @genre = Genre.all
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    render 'index'
  end

  private
  def book_params
    # specify that genre_ids is an array by => []
    params.require(:book).permit(:title, :author_id, :genre_ids => [])
  end
end
