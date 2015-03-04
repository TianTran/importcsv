class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def import
    begin
      User.import(params[:file])
      redirect_to root_url, notice: "Products imported."
    rescue
      redirect_to root_url, alert: "Invalid CSV file format."
    end
  end
end
