class HostelsController < ApplicationController
  before_action :set_hostel, only: [:show, :edit, :update, :destroy]

  # GET /hostels
  # GET /hostels.json
  def index
    @hostels = Hostel.all
  end

  # GET /hostels/1
  # GET /hostels/1.json
  def show
  end

  # GET /hostels/new
  def new
    @hostel = Hostel.new
  end

  # GET /hostels/1/edit
  def edit
  end

  # POST /hostels
  # POST /hostels.json
  def create
    @hostel = Hostel.new(hostel_params)

    respond_to do |format|
      if @hostel.save
        format.html { redirect_to @hostel, notice: 'Hostel was successfully created.' }
        format.json { render :show, status: :created, location: @hostel }
      else
        format.html { render :new }
        format.json { render json: @hostel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostels/1
  # PATCH/PUT /hostels/1.json
  def update
    respond_to do |format|
      if @hostel.update(hostel_params)
        format.html { redirect_to @hostel, notice: 'Hostel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostel }
      else
        format.html { render :edit }
        format.json { render json: @hostel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostels/1
  # DELETE /hostels/1.json
  def destroy
    @hostel.destroy
    respond_to do |format|
      format.html { redirect_to hostels_url, notice: 'Hostel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostel
      @hostel = Hostel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostel_params
      params.require(:hostel).permit(:name, :image_url, :description)
    end
end
