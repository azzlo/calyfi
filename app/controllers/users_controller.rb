class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @administrators = User.where(admin_role: true)
  end

  def edit
    @user = current_user
  end

  def create
    @user = User.new(teacher_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /uesrs/1
  # PATCH/PUT /uesrs/1.json
  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      redirect_to root_path
    else
      render "edit"
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
