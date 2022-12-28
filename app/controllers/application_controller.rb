class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # I18n.locale = :en
end
