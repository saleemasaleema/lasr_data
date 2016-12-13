class TaughtsController < ApplicationController
  before_action :set_taught, only: [:show, :edit, :update, :destroy]

  # GET /taughts
  # GET /taughts.json
  def index
    @taughts = Taught.all
  end

  # GET /taughts/1
  # GET /taughts/1.json
  def show
  end

  # GET /taughts/new
  def new
    @taught = Taught.new
  end

  # GET /taughts/1/edit
  def edit
  end

  # POST /taughts
  # POST /taughts.json
  def create
    @taught = Taught.new(taught_params)

    respond_to do |format|
      if @taught.save
        format.html { redirect_to @taught, notice: 'Taught was successfully created.' }
        format.json { render :show, status: :created, location: @taught }
      else
        format.html { render :new }
        format.json { render json: @taught.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taughts/1
  # PATCH/PUT /taughts/1.json
  def update
    respond_to do |format|
      if @taught.update(taught_params)
        format.html { redirect_to @taught, notice: 'Taught was successfully updated.' }
        format.json { render :show, status: :ok, location: @taught }
      else
        format.html { render :edit }
        format.json { render json: @taught.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taughts/1
  # DELETE /taughts/1.json
  def destroy
    @taught.destroy
    respond_to do |format|
      format.html { redirect_to taughts_url, notice: 'Taught was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taught
      @taught = Taught.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taught_params
      params.require(:taught).permit(:course_id, :instructorr_id)
    end
end
