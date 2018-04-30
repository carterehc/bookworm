class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :show]
  before_action :correct_user, only: [:edit, :update, :show]
  
  helper_method :sort_column, :sort_direction
    
  def show
    @user = User.find(params[:id])
    if params[:search]
      @books = @user.books.where("title like ? OR author_first like ? OR author_last like ? OR yr_published like ? OR yr_read like ? OR ISBN like ? OR tag like ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").order("#{sort_column} #{sort_direction}")
    else
      @books = @user.books.order("#{sort_column} #{sort_direction}") #.paginate(:per_page => 15, :page => params[:page])
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)    #signing up logs the user in
      flash[:success] = "Welcome to BookWorm"
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = 'Password updated'
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def correct_user    #logged in users can access only their pages
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    def sortable_columns
      ["title", "author_first", "author_last", "yr_published", "want_read", "yr_read", "times_read", "own", "ISBN", "tag"]
    end
    
    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "title"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
