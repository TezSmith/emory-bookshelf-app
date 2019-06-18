class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # The path used after sign up.
  def after_sign_in_path_for(resource)
     author_path(resource)
  end
end
