class Admin::DashboardController < ApplicationController

  before_action :authenticate

  def show
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.configuration.admin[:admin_username] && password == Rails.configuration.admin[:admin_password]
    end
  end

end
