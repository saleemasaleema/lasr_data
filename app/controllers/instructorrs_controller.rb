class InstructorrsController < ApplicationController
  before_action :set_instructorr, only: [:show, :edit, :update, :destroy]

  # GET /instructorrs
  # GET /instructorrs.json
  def index
    @instructorrs = Instructorr.all
  end

  # GET /instructorrs/1
  # GET /instructorrs/1.json
  def show
  end

  # GET /instructorrs/new
  def new
    @instructorr = Instructorr.new
  end

  # GET /instructorrs/1/edit
  def edit
  end

  # POST /instructorrs
  # POST /instructorrs.json
  def create
    @instructorr = Instructorr.new(instructorr_params)

    respond_to do |format|
      if @instructorr.save
        format.html { redirect_to @instructorr, notice: 'Instructorr was successfully created.' }
        format.json { render :show, status: :created, location: @instructorr }
      else
        format.html { render :new }
        format.json { render json: @instructorr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructorrs/1
  # PATCH/PUT /instructorrs/1.json
  def update
    respond_to do |format|
      if @instructorr.update(instructorr_params)
        format.html { redirect_to @instructorr, notice: 'Instructorr was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructorr }
      else
        format.html { render :edit }
        format.json { render json: @instructorr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructorrs/1
  # DELETE /instructorrs/1.json
  def destroy
    @instructorr.destroy
    respond_to do |format|
      format.html { redirect_to instructorrs_url, notice: 'Instructorr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructorr
      @instructorr = Instructorr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructorr_params
      params.require(:instructorr).permit(:i_name, :i_address, :Gender)
    end
end
