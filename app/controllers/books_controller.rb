class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book.params)
    @book.user_id = currnt_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @user = current_user
  end

  def show
  end
  
  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
