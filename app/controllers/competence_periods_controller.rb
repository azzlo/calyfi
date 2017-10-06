class CompetencePeriodsController < ApplicationController
  before_action :set_competence_period, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher_group, only: [:show, :edit, :new, :create, :update]
  # GET /competence_periods
  # GET /competence_periods.json
  def index
    @competence_periods = CompetencePeriod.all
  end

  # GET /competence_periods/1
  # GET /competence_periods/1.json
  def show
  end

  # GET /competence_periods/new
  def new
    @competence_period = @teacher_group.competence_periods.build
  end

  # GET /competence_periods/1/edit
  def edit
  end

  # POST /competence_periods
  # POST /competence_periods.json
  def create
    @competence_period = CompetencePeriod.new(competence_period_params)

    respond_to do |format|
      if @competence_period.save
        format.html { redirect_to [@teacher_group, @competence_period], notice: 'Competence period was successfully created.' }
        format.json { render :show, status: :created, location: @competence_period }
      else
        format.html { render :new }
        format.json { render json: @competence_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competence_periods/1
  # PATCH/PUT /competence_periods/1.json
  def update
    respond_to do |format|
      if @competence_period.update(competence_period_params)
        format.html { redirect_to @competence_period, notice: 'Competence period was successfully updated.' }
        format.json { render :show, status: :ok, location: @competence_period }
      else
        format.html { render :edit }
        format.json { render json: @competence_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competence_periods/1
  # DELETE /competence_periods/1.json
  def destroy
    @competence_period.destroy
    respond_to do |format|
      format.html { redirect_to competence_periods_url, notice: 'Competence period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competence_period
      @competence_period = CompetencePeriod.find(params[:id])
    end

    def set_teacher_group
      @teacher_group = TeacherGroup.find(params[:teacher_group_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competence_period_params
      params.require(:competence_period).permit(:start_at, :end_at, :title, :description, :teacher_group_id)
    end
end
