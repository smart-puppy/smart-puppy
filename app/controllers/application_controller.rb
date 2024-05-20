class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:business, :first_name, :middle_name, :last_name, :username, :email, :age, :phone_number, :biography, :pronouns, :industry, :job_position, :location, :education])
      devise_parameter_sanitizer.permit(:account_update, keys: [:business, :first_name, :middle_name, :last_name, :username, :email, :age, :phone_number, :biography, :pronouns, :industry, :job_position, :location, :education])
    end

    def after_sign_in_path_for(resource)
      dashboard_path
    end
end
