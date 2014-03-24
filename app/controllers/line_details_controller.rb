class LineDetailsController < ApplicationController
  before_action :set_line_detail, only: [:show, :edit, :update, :destroy]

  # GET /line_details
  # GET /line_details.json
  def index
    @line_details = LineDetail.all
  end

  # GET /line_details/1
  # GET /line_details/1.json
  def show
  end

  # GET /line_details/new
  def new
    @line_detail = LineDetail.new
  end

  # GET /line_details/1/edit
  def edit
  end

  # POST /line_details
  # POST /line_details.json
  def create
    @line_detail = LineDetail.new(line_detail_params)
    generate_id
    respond_to do |format|
      if @line_detail.save
        format.html { redirect_to @line_detail, notice: 'Line detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @line_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_detail.errors, status: :unprocessable_entity }
      end
    end
  end
  def generate_id
    n = @line_detail.title.downcase.tr(" ","-").tr('"','-').tr('.','-')
    id = "#{n}"
    @line_detail.id = id
  end
  # PATCH/PUT /line_details/1
  # PATCH/PUT /line_details/1.json
  def update
    respond_to do |format|
      if @line_detail.update(line_detail_params)
        format.html { redirect_to @line_detail, notice: 'Line detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @line_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_details/1
  # DELETE /line_details/1.json
  def destroy
    @line_detail.destroy
    respond_to do |format|
      format.html { redirect_to line_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_detail
      @line_detail = LineDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_detail_params
      params.require(:line_detail).permit(:title, :description, :line_id, :country_id)
    end
end
