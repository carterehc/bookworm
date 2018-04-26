class BooksController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def new
    @book = Book.new    #does not yet belong to database
  end

  def create
    @book = current_user.books.build(book_params)   #triggers validations
    
    if @book.save    #saved to db?
      flash[:success] = "Book Added!"
      redirect_to user_path(current_user.id)
    else
      render 'new'
    end
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to user_path(current_user.id)
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:success] = 'Book Saved'
      redirect_to user_path(current_user.id)
    else
      render 'edit'
    end
  end
  
  
  private
    def book_params
      params.require(:book).permit(:title, :yr_read, :yr_published, :read, :own, :ISBN, :want_own, :want_read, :times_read, :author_first, :author_last, :tag)
    end
end
