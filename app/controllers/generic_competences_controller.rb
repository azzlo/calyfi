class GenericCompetencesController < ApplicationController
  before_action :set_generic_competence, only: [:show, :edit, :update, :destroy]

  # GET /generic_competences
  # GET /generic_competences.json
  def index
    @generic_competences = GenericCompetence.all
  end

  # GET /generic_competences/1
  # GET /generic_competences/1.json
  def show
  end

  # GET /generic_competences/new
  def new
    @generic_competence = GenericCompetence.new
  end

  # GET /generic_competences/1/edit
  def edit
  end

  # POST /generic_competences
  # POST /generic_competences.json
  def create
    @generic_competence = GenericCompetence.new(generic_competence_params)

    respond_to do |format|
      if @generic_competence.save
        format.html { redirect_to @generic_competence, notice: 'Generic competence was successfully created.' }
        format.json { render :show, status: :created, location: @generic_competence }
      else
        format.html { render :new }
        format.json { render json: @generic_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_competences/1
  # PATCH/PUT /generic_competences/1.json
  def update
    respond_to do |format|
      if @generic_competence.update(generic_competence_params)
        format.html { redirect_to @generic_competence, notice: 'Generic competence was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_competence }
      else
        format.html { render :edit }
        format.json { render json: @generic_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_competences/1
  # DELETE /generic_competences/1.json
  def destroy
    @generic_competence.destroy
    respond_to do |format|
      format.html { redirect_to generic_competences_url, notice: 'Generic competence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_competence
      @generic_competence = GenericCompetence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_competence_params
      params.require(:generic_competence).permit(:number, :name, :competition_category_id)
    end
end
