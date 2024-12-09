class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'Thank you for registering!'
    else
      # flash[:alert] = @user.errors.full_messages
      render :new
    end
  end

  private

  # This method is required to only set the following params and not any attributes sent by a user
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end