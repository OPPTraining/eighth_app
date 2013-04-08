class CoursesectionsController < ApplicationController
  def index
    @coursesections = Coursesection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coursesections }
    end
  end

  def show
    @coursesections = Coursesection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coursesection }
    end
  end

  def new
    @coursesection = Coursesection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coursesection }
    end
  end

  def edit
    @coursesection = Coursesection.find(params[:id])
  end

  def create
    @coursesection = Coursesection.new(params[:coursesection])

    respond_to do |format|
      if @coursesection.save
        format.html { redirect_to @coursesection, notice: 'Course Section was successfully created.' }
        format.json { render json: @coursesection, status: :created, location: @coursesection }
      else
        format.html { render action: "new" }
        format.json { render json: @coursesection.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @coursesection = Coursesection.find(params[:id])

    respond_to do |format|
      if @coursesection.update_attributes(params[:coursesection])
        format.html { redirect_to @coursesection, notice: 'Course Section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coursesection.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @coursesection = Coursesection.find(params[:id])
    @coursesection.destroy

    respond_to do |format|
      format.html { redirect_to coursesections_url }
      format.json { head :no_content }
    end
  end
end