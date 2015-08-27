class ApplicationController < ActionController::Base
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery :with => :exception

  # Valid request formats
  respond_to :html, :json

  # Devise filters
  before_filter  :authenticate_user!, :user_signed_in?, :current_user, :user_session

  rescue_from Pundit::NotAuthorizedError, :with => :user_not_authorized
end
