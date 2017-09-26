class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @teacher_groups = current_user.teacher.teacher_groups unless current_user.admin_role
  end
end
