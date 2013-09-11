class FosterersController < ApplicationController
  # GET /fosterers
  # GET /fosterers.json
  def index
    @fosterers = Fosterer.all
    @volunteers = Volunteer.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fosterers }
    end
  end

  # GET /fosterers/1
  # GET /fosterers/1.json
  def show
    @fosterer = Fosterer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fosterer }
    end
  end

  # GET /fosterers/new
  # GET /fosterers/new.json
  def new
    @fosterer = Fosterer.new
#     @fosterer = Fosterer.find_by_volunteer_id(params[:vol])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fosterer }
    end
  end

  # GET /fosterers/1/edit
  def edit
    @fosterer = Fosterer.find(params[:id])
  end

  # POST /fosterers
  # POST /fosterers.json
  def create
    @fosterer = Fosterer.new(params[:fosterer])

    respond_to do |format|
      if @fosterer.save
        format.html { redirect_to @fosterer, notice: 'Fosterer was successfully created.' }
        format.json { render json: @fosterer, status: :created, location: @fosterer }
      else
        format.html { render action: "new" }
        format.json { render json: @fosterer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fosterers/1
  # PUT /fosterers/1.json
  def update
    @fosterer = Fosterer.find(params[:id])

    respond_to do |format|
      if @fosterer.update_attributes(params[:fosterer])
        format.html { redirect_to @fosterer, notice: 'Fosterer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fosterer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fosterers/1
  # DELETE /fosterers/1.json
  def destroy
    @fosterer = Fosterer.find(params[:id])
    @fosterer.destroy

    respond_to do |format|
      format.html { redirect_to fosterers_url }
      format.json { head :no_content }
    end
  end
end
