class ExternaltrainingsController < ApplicationController
  # GET /externaltrainings
  # GET /externaltrainings.json
  def index
    @externaltrainings = Externaltraining.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @externaltrainings }
    end
  end

  # GET /externaltrainings/1
  # GET /externaltrainings/1.json
  def show
    @externaltraining = Externaltraining.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @externaltraining }
    end
  end

  # GET /externaltrainings/new
  # GET /externaltrainings/new.json
  def new
    @externaltraining = Externaltraining.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @externaltraining }
    end
  end

  # GET /externaltrainings/1/edit
  def edit
    @externaltraining = Externaltraining.find(params[:id])
  end

  # POST /externaltrainings
  # POST /externaltrainings.json
  def create
    @externaltraining = Externaltraining.new(params[:externaltraining])

    respond_to do |format|
      if @externaltraining.save
        format.html { redirect_to @externaltraining, notice: 'Externaltraining was successfully created.' }
        format.json { render json: @externaltraining, status: :created, location: @externaltraining }
      else
        format.html { render action: "new" }
        format.json { render json: @externaltraining.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /externaltrainings/1
  # PUT /externaltrainings/1.json
  def update
    @externaltraining = Externaltraining.find(params[:id])

    respond_to do |format|
      if @externaltraining.update_attributes(params[:externaltraining])
        format.html { redirect_to @externaltraining, notice: 'Externaltraining was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @externaltraining.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /externaltrainings/1
  # DELETE /externaltrainings/1.json
  def destroy
    @externaltraining = Externaltraining.find(params[:id])
    @externaltraining.destroy

    respond_to do |format|
      format.html { redirect_to externaltrainings_url }
      format.json { head :no_content }
    end
  end
end
