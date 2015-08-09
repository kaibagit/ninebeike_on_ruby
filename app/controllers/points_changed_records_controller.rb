class PointsChangedRecordsController < ApplicationController
  before_action :set_points_changed_record, only: [:show, :edit, :update, :destroy]

  # GET /points_changed_records
  # GET /points_changed_records.json
  def index
    @points_changed_records = PointsChangedRecord.all
  end

  # GET /points_changed_records/1
  # GET /points_changed_records/1.json
  def show
  end

  # GET /points_changed_records/new
  def new
    @points_changed_record = PointsChangedRecord.new
  end

  # GET /points_changed_records/1/edit
  def edit
  end

  # POST /points_changed_records
  # POST /points_changed_records.json
  def create
    @points_changed_record = PointsChangedRecord.new(points_changed_record_params)

    respond_to do |format|
      if @points_changed_record.save
        format.html { redirect_to @points_changed_record, notice: 'Points changed record was successfully created.' }
        format.json { render :show, status: :created, location: @points_changed_record }
      else
        format.html { render :new }
        format.json { render json: @points_changed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points_changed_records/1
  # PATCH/PUT /points_changed_records/1.json
  def update
    respond_to do |format|
      if @points_changed_record.update(points_changed_record_params)
        format.html { redirect_to @points_changed_record, notice: 'Points changed record was successfully updated.' }
        format.json { render :show, status: :ok, location: @points_changed_record }
      else
        format.html { render :edit }
        format.json { render json: @points_changed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points_changed_records/1
  # DELETE /points_changed_records/1.json
  def destroy
    @points_changed_record.destroy
    respond_to do |format|
      format.html { redirect_to points_changed_records_url, notice: 'Points changed record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_points_changed_record
      @points_changed_record = PointsChangedRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def points_changed_record_params
      params.require(:points_changed_record).permit(:mid, :changed_before, :chaged_points, :changed_after)
    end
end
