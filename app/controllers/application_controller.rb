class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :reload_route

def reload_route
  Rails.application.reload_routes!
end

end
