class TeacherGroupsController < ApplicationController
  before_action :set_teacher_group, only: [:show, :edit, :update, :destroy]

  # GET /teacher_groups
  # GET /teacher_groups.json
  def index
    @teacher_groups = TeacherGroup.all
  end

  # GET /teacher_groups/1
  # GET /teacher_groups/1.json
  def show
  end

  # GET /teacher_groups/new
  def new
    @teacher_group = TeacherGroup.new
  end

  # GET /teacher_groups/1/edit
  def edit
  end

  # POST /teacher_groups
  # POST /teacher_groups.json
  def create
    @teacher_group = TeacherGroup.new(teacher_group_params)

    respond_to do |format|
      if @teacher_group.save
        format.html { redirect_to teacher_groups_path, notice: 'Teacher group was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_group }
      else
        format.html { render :new }
        format.json { render json: @teacher_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_groups/1
  # PATCH/PUT /teacher_groups/1.json
  def update
    respond_to do |format|
      if @teacher_group.update(teacher_group_params)
        format.html { redirect_to teacher_groups_path, notice: 'Teacher group was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_group }
      else
        format.html { render :edit }
        format.json { render json: @teacher_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_groups/1
  # DELETE /teacher_groups/1.json
  def destroy
    @teacher_group.destroy
    respond_to do |format|
      format.html { redirect_to teacher_groups_url, notice: 'Teacher group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_group
      @teacher_group = TeacherGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_group_params
      params.require(:teacher_group).permit(:teacher_id, :group_id, :subject, :period)
    end
end
