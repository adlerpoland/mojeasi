class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:show, :index,:info]
  def redirect_to_https
    redirect_to :protocol => "https://" unless (request.ssl? || request.local?)
  end
  before_filter :redirect_to_https
end
