class VentilationLogsController < ApplicationController
  before_action :set_ventilation_log, only: [:show, :edit, :update, :destroy]

  # GET /ventilation_logs
  # GET /ventilation_logs.json
  def index
    @ventilation_logs = VentilationLog.all
  end

  # GET /ventilation_logs/1
  # GET /ventilation_logs/1.json
  def show
  end

  # GET /ventilation_logs/new
  def new
    @ventilation_log = VentilationLog.new
  end

  # GET /ventilation_logs/1/edit
  def edit
  end

  # POST /ventilation_logs
  # POST /ventilation_logs.json
  def create
    @ventilation_log = VentilationLog.new(ventilation_log_params)

    respond_to do |format|
      if @ventilation_log.save
        format.html { redirect_to @ventilation_log, notice: 'Ventilation log was successfully created.' }
        format.json { render :show, status: :created, location: @ventilation_log }
      else
        format.html { render :new }
        format.json { render json: @ventilation_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventilation_logs/1
  # PATCH/PUT /ventilation_logs/1.json
  def update
    respond_to do |format|
      if @ventilation_log.update(ventilation_log_params)
        format.html { redirect_to @ventilation_log, notice: 'Ventilation log was successfully updated.' }
        format.json { render :show, status: :ok, location: @ventilation_log }
      else
        format.html { render :edit }
        format.json { render json: @ventilation_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventilation_logs/1
  # DELETE /ventilation_logs/1.json
  def destroy
    @ventilation_log.destroy
    respond_to do |format|
      format.html { redirect_to ventilation_logs_url, notice: 'Ventilation log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventilation_log
      @ventilation_log = VentilationLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventilation_log_params
      params.require(:ventilation_log).permit(:fan_id, :grid_id, :start_time, :end_time, :speed)
    end
end
