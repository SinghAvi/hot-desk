class ApplicationController < ActionController::Base
	protect_from_forgery prepend: true
	before_action :authenticate_staff!

	private

  def check_role
    unless current_staff.admin?
      redirect_back(fallback_location: root_path, notice: "You are not authorized to see all #{params[:controller]}")
    end
  end
end
