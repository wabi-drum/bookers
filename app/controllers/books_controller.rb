class BooksController < ApplicationController
  def index
    @books = Book.all 
    @book = Book.new
  end

  def new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def edit
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
