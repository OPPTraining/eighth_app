class CoursesController < ApplicationController
	before_filter :signed_in_user, 
                only: [:index, :edit, :update, :destroy]

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:success] = "You have created a Course!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def index
    @course = Course.paginate(page: params[:page])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def destroy
    @course.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

end
