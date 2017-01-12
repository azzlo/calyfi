class StudyCyclesController < ApplicationController
  before_action :set_study_cycle, only: [:show, :edit, :update, :destroy]

  # GET /study_cycles
  # GET /study_cycles.json
  def index
    @study_cycles = StudyCycle.all
  end

  # GET /study_cycles/1
  # GET /study_cycles/1.json
  def show
  end

  # GET /study_cycles/new
  def new
    @study_cycle = StudyCycle.new
  end

  # GET /study_cycles/1/edit
  def edit
  end

  # POST /study_cycles
  # POST /study_cycles.json
  def create
    @study_cycle = StudyCycle.new(study_cycle_params)

    respond_to do |format|
      if @study_cycle.save
        format.html { redirect_to @study_cycle, notice: 'Study cycle was successfully created.' }
        format.json { render :show, status: :created, location: @study_cycle }
      else
        format.html { render :new }
        format.json { render json: @study_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_cycles/1
  # PATCH/PUT /study_cycles/1.json
  def update
    respond_to do |format|
      if @study_cycle.update(study_cycle_params)
        format.html { redirect_to @study_cycle, notice: 'Study cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_cycle }
      else
        format.html { render :edit }
        format.json { render json: @study_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_cycles/1
  # DELETE /study_cycles/1.json
  def destroy
    @study_cycle.destroy
    respond_to do |format|
      format.html { redirect_to study_cycles_url, notice: 'Study cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_cycle
      @study_cycle = StudyCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_cycle_params
      params.require(:study_cycle).permit(:start_at, :end_at)
    end
end
