class PhaseDetailsController < ApplicationController
  before_action :set_phase_detail, only: [:show, :edit, :update, :destroy]

  # GET /phase_details
  # GET /phase_details.json
  def index
    @phase_details = PhaseDetail.all
  end

  # GET /phase_details/1
  # GET /phase_details/1.json
  def show
  end

  # GET /phase_details/new
  def new
    @phase_detail = PhaseDetail.new
  end

  # GET /phase_details/1/edit
  def edit
  end

  # POST /phase_details
  # POST /phase_details.json
  def create
    @phase_detail = PhaseDetail.new(phase_detail_params)
    generate_id
    respond_to do |format|
      if @phase_detail.save
        format.html { redirect_to @phase_detail, notice: 'Phase detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @phase_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @phase_detail.errors, status: :unprocessable_entity }
      end
    end
  end
  def generate_id
    p = @phase_detail.title.downcase.tr(" ","-").tr('"','-').tr('.','-')
    id = "#{p}"
    @phase_detail.id = id
  end
  # PATCH/PUT /phase_details/1
  # PATCH/PUT /phase_details/1.json
  def update
    respond_to do |format|
      if @phase_detail.update(phase_detail_params)
        format.html { redirect_to @phase_detail, notice: 'Phase detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @phase_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phase_details/1
  # DELETE /phase_details/1.json
  def destroy
    @phase_detail.destroy
    respond_to do |format|
      format.html { redirect_to phase_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phase_detail
      @phase_detail = PhaseDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phase_detail_params
      params.require(:phase_detail).permit(:no, :title, :distance, :status, :description, :phase_id, :country_id)
    end
end
