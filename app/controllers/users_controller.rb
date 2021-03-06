class UsersController < ApplicationController
  before_filter :signed_in_user, 
                only: [:index, :edit, :update, :destroy, :following, :followers]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: [:destroy]
  before_filter :skip_password_attribute, only: :update


  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "User Created!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
     @users = User.search(params[:search])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      if current_user.admin? && !current_user?(@user)
        redirect_to users_url
      else
        sign_in @user
        redirect_to @user
      end
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user }
      format.csv { send_data text: @user.to_csv}
      format.xls #{ send_data text: @courses.to_csv(col_sep: "\t") }
    end
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user) or current_user.admin?
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

    def skip_password_attribute
      if params[:password].blank? && params[:password_confirmation].blank?
        params.except!(:password, :password_confirmation)
      end
    end
end