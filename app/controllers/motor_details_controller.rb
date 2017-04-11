class MotorDetailsController < ApplicationController
  before_action :set_motor_detail, only: [:show, :edit, :update, :destroy]

  # GET /motor_details
  # GET /motor_details.json
  def index
    @motor_details = MotorDetail.all
  end

  # GET /motor_details/1
  # GET /motor_details/1.json
  def show
  end

  # GET /motor_details/new
  def new
    @motor_detail = MotorDetail.new
  end

  # GET /motor_details/1/edit
  def edit
  end

  # POST /motor_details
  # POST /motor_details.json
  def create
    @motor_detail = MotorDetail.new(motor_detail_params)

    respond_to do |format|
      if @motor_detail.save
        format.html { redirect_to @motor_detail, notice: 'Motor detail was successfully created.' }
        format.json { render :show, status: :created, location: @motor_detail }
      else
        format.html { render :new }
        format.json { render json: @motor_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motor_details/1
  # PATCH/PUT /motor_details/1.json
  def update
    respond_to do |format|
      if @motor_detail.update(motor_detail_params)
        format.html { redirect_to @motor_detail, notice: 'Motor detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @motor_detail }
      else
        format.html { render :edit }
        format.json { render json: @motor_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motor_details/1
  # DELETE /motor_details/1.json
  def destroy
    @motor_detail.destroy
    respond_to do |format|
      format.html { redirect_to motor_details_url, notice: 'Motor detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motor_detail
      @motor_detail = MotorDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motor_detail_params
      params.require(:motor_detail).permit(:amperage, :horsepower, :voltage, :weight, :width, :height)
    end
end
