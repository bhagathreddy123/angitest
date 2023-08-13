class ApplicationController < ActionController::Base
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized(exception)
    flash[:alert] = "You are NotAuthorized to perform this action"
    redirect_to(request.referer || root_path)
  end
end
