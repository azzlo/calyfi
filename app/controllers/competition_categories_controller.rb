class CompetitionCategoriesController < ApplicationController
  before_action :set_competition_category, only: [:show, :edit, :update, :destroy]

  # GET /competition_categories
  # GET /competition_categories.json
  def index
    @competition_categories = CompetitionCategory.all
  end

  # GET /competition_categories/1
  # GET /competition_categories/1.json
  def show
  end

  # GET /competition_categories/new
  def new
    @competition_category = CompetitionCategory.new
  end

  # GET /competition_categories/1/edit
  def edit
  end

  # POST /competition_categories
  # POST /competition_categories.json
  def create
    @competition_category = CompetitionCategory.new(competition_category_params)

    respond_to do |format|
      if @competition_category.save
        format.html { redirect_to @competition_category, notice: 'Competition category was successfully created.' }
        format.json { render :show, status: :created, location: @competition_category }
      else
        format.html { render :new }
        format.json { render json: @competition_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competition_categories/1
  # PATCH/PUT /competition_categories/1.json
  def update
    respond_to do |format|
      if @competition_category.update(competition_category_params)
        format.html { redirect_to @competition_category, notice: 'Competition category was successfully updated.' }
        format.json { render :show, status: :ok, location: @competition_category }
      else
        format.html { render :edit }
        format.json { render json: @competition_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competition_categories/1
  # DELETE /competition_categories/1.json
  def destroy
    @competition_category.destroy
    respond_to do |format|
      format.html { redirect_to competition_categories_url, notice: 'Competition category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition_category
      @competition_category = CompetitionCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competition_category_params
      params.require(:competition_category).permit(:number, :name)
    end
end
