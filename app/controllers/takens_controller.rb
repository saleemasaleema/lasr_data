class TakensController < ApplicationController
  before_action :set_taken, only: [:show, :edit, :update, :destroy]

  # GET /takens
  # GET /takens.json
  def index
    @takens = Taken.all
  end

  # GET /takens/1
  # GET /takens/1.json
  def show
  end

  # GET /takens/new
  def new
    @taken = Taken.new
  end

  # GET /takens/1/edit
  def edit
  end

  # POST /takens
  # POST /takens.json
  def create
    @taken = Taken.new(taken_params)

    respond_to do |format|
      if @taken.save
        format.html { redirect_to @taken, notice: 'Taken was successfully created.' }
        format.json { render :show, status: :created, location: @taken }
      else
        format.html { render :new }
        format.json { render json: @taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /takens/1
  # PATCH/PUT /takens/1.json
  def update
    respond_to do |format|
      if @taken.update(taken_params)
        format.html { redirect_to @taken, notice: 'Taken was successfully updated.' }
        format.json { render :show, status: :ok, location: @taken }
      else
        format.html { render :edit }
        format.json { render json: @taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takens/1
  # DELETE /takens/1.json
  def destroy
    @taken.destroy
    respond_to do |format|
      format.html { redirect_to takens_url, notice: 'Taken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taken
      @taken = Taken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taken_params
      params.require(:taken).permit(:student_id, :course_id)
    end
end
