class GenericCompetenceAttributesController < ApplicationController
  before_action :set_generic_competence_attribute, only: [:show, :edit, :update, :destroy]

  # GET /generic_competence_attributes
  # GET /generic_competence_attributes.json
  def index
    @generic_competence_attributes = GenericCompetenceAttribute.all
  end

  # GET /generic_competence_attributes/1
  # GET /generic_competence_attributes/1.json
  def show
  end

  # GET /generic_competence_attributes/new
  def new
    @generic_competence_attribute = GenericCompetenceAttribute.new
  end

  # GET /generic_competence_attributes/1/edit
  def edit
  end

  # POST /generic_competence_attributes
  # POST /generic_competence_attributes.json
  def create
    @generic_competence_attribute = GenericCompetenceAttribute.new(generic_competence_attribute_params)

    respond_to do |format|
      if @generic_competence_attribute.save
        format.html { redirect_to @generic_competence_attribute, notice: 'Generic competence attribute was successfully created.' }
        format.json { render :show, status: :created, location: @generic_competence_attribute }
      else
        format.html { render :new }
        format.json { render json: @generic_competence_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_competence_attributes/1
  # PATCH/PUT /generic_competence_attributes/1.json
  def update
    respond_to do |format|
      if @generic_competence_attribute.update(generic_competence_attribute_params)
        format.html { redirect_to @generic_competence_attribute, notice: 'Generic competence attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_competence_attribute }
      else
        format.html { render :edit }
        format.json { render json: @generic_competence_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_competence_attributes/1
  # DELETE /generic_competence_attributes/1.json
  def destroy
    @generic_competence_attribute.destroy
    respond_to do |format|
      format.html { redirect_to generic_competence_attributes_url, notice: 'Generic competence attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_competence_attribute
      @generic_competence_attribute = GenericCompetenceAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_competence_attribute_params
      params.require(:generic_competence_attribute).permit(:number, :description, :generic_competence_id)
    end
end
