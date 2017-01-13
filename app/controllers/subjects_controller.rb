class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  before_action :set_curriculum, only: [:index, :new, :show, :edit, :update, :destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = @curriculum.subjects
    @semester1 = @curriculum.subjects.where(:semester => 1)
    @semester2 = @curriculum.subjects.where(:semester => 2)
    @semester3 = @curriculum.subjects.where(:semester => 3)
    @semester4 = @curriculum.subjects.where(:semester => 4)
    @semester5 = @curriculum.subjects.where(:semester => 5)
    @semester6 = @curriculum.subjects.where(:semester => 6)
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
  end

  # GET /subjects/new
  def new
    @subject = @curriculum.subjects.build
  end

  # GET /subjects/1/edit
  def edit
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(subject_params)

    respond_to do |format|
      if @subject.save
        format.html { redirect_to curriculum_subjects_path(@subject.curriculum), notice: 'Subject was successfully created.' }
        format.json { render :show, status: :created, location: @subject }
      else
        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to curriculum_subjects_path(@subject.curriculum), notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    def set_curriculum
      @curriculum = Curriculum.find(params[:curriculum_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:name, :code, :semester, :curriculum_id, :teacher_id, :dependency_subject_id)
    end
end
