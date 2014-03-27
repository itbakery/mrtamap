class StationDetailsController < ApplicationController
  layout 'welcome'
  before_action :set_station_detail, only: [:show, :edit, :update, :destroy]

  # GET /station_details
  # GET /station_details.json
  def index
    @station_details = StationDetail.all
  end

  # GET /station_details/1
  # GET /station_details/1.json
  def show
  end

  # GET /station_details/new
  def new
    @station_detail = StationDetail.new
  end

  # GET /station_details/1/edit
  def edit
  end

  # POST /station_details
  # POST /station_details.json
  def create
    @station_detail = StationDetail.new(station_detail_params)
    generate_id
    respond_to do |format|
      if @station_detail.save
        format.html { redirect_to @station_detail, notice: 'Station detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @station_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @station_detail.errors, status: :unprocessable_entity }
      end
    end
  end
  def generate_id
    s = @station_detail.title.downcase.tr(" ","-").tr('"','-').tr('.','-')
    id = "#{s}"
    @station_detail.id = id
  end
  # PATCH/PUT /station_details/1
  # PATCH/PUT /station_details/1.json
  def update
    respond_to do |format|
      if @station_detail.update(station_detail_params)
        format.html { redirect_to @station_detail, notice: 'Station detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @station_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /station_details/1
  # DELETE /station_details/1.json
  def destroy
    @station_detail.destroy
    respond_to do |format|
      format.html { redirect_to station_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station_detail
      @station_detail = StationDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def station_detail_params
      params.require(:station_detail).permit(:code, :title, :latitude, :longitude, :address, :description, :station_id, :country_id, :phase_id, :line_id)
    end
end
