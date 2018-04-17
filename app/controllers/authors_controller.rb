class AuthorsController < ApplicationController
    def add
      @author = Author.new
    end
    
    def create
      @author = Author
    end
end
