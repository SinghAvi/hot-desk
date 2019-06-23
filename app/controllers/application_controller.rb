class ApplicationController < ActionController::Base
	protect_from_forgery prepend: true
	before_action :authenticate_staff!
	before_action :set_locale

	private

  def set_locale
    # locale = 'es' if current_user.try(:preffered_language) == 'spanish'
    I18n.locale = locale || I18n.default_locale
  end

  def check_role
    unless current_staff.admin?
      redirect_back(fallback_location: root_path, notice: "You are not authorized to see all #{params[:controller]}")
    end
  end
end
