class BooksController < ApplicationController
  def index
    @book = Book.new

  end

  def new
  end

  def create
    book = Book.new(book_params)
    book.save
  end

  def edit
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
