class BooksController < ApplicationController
  def index
  end
  
  def add
    @book = Book.new    #does not yet belong to database
  end

  def create
    render plain: params[:book].inspect
    @book = Book.new(params[:book])    #triggers validations
    @author = Author.new()
    if @author.new_record?
      @author.save
    end
    
    if @book.save    #saved to db?
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
      params.require(:book).permit(:title, :yr_published, :read, :yr_read )
    end
end
