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
    
  end

  def update
  end
  
  
  private
    def book_params
      params.require(:book).permit(:title, :yr_read, :yr_published, :read, :own, :ISBN, :edition, :want_own, :want_read, :times_read, :author_first, :author_last)
    end
end
