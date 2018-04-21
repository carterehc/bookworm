class BooksController < ApplicationController
  def index
    @books = Book.all
    @authors = Author.all
  end
  
  def add
    @authors = Author.new
    @book = Book.new    #does not yet belong to database
  end

  def create
    render plain: params[:book].inspect
    @author = Author.new


    if @author.new_record?
      @author.save
    end
    @book = Book.new(book_params)   #triggers validations
    
    if @book.save    #saved to db?
      flash[:success] = "Book Added!"
      render 'index'
      #else render
    end
  end

  def delete
  end

  def update
  end
  
  
  private
    def book_params
      params.require(:book).permit(:title, :yr_read, :yr_published, :read, :own, :ISBN, :edition, :want_own, :want_read, :times_read)
    end
end
