class ApplicationController < ActionController::Base
  before_filter do
   resource = controller_name.singularize.to_sym
   method = "#{resource}_params"
   params[resource] &&= send(method) if respond_to?(method, true)
 end

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do | exception |
    redirect_to root_path
    flash[:info] = exception.message
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
end
