class MainController < ApplicationController
  def index
    flash.now[:notice] = "Logged in successfully"
    flash.now[:alert] = "Invalid login"
  end
end