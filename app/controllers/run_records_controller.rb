class RunRecordsController < ApplicationController
  before_action :set_run_record, only: [:show, :update, :destroy]

  # GET /run_records
  def index
    @run_records = RunRecord.all

    render json: @run_records
  end

  # GET /run_records/1
  def show
    render json: @run_record
  end

  # POST /run_records
  def create
    @run_record = RunRecord.new(run_record_params)
    @run_record.pace = (@run_record.time/@run_record.distance).round(2)

    if @run_record.save
      render json: @run_record, status: :created, location: @run_record
    else
      render json: @run_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /run_records/1
  def update
    if @run_record.update(run_record_params)
      render json: @run_record
    else
      render json: @run_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /run_records/1
  def destroy
    @run_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run_record
      @run_record = RunRecord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def run_record_params
      params.require(:run_record).permit(:user_id, :date, :difficulty, :distance, :time, :notes)
    end
end
