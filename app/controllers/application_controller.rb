# frozen_string_literal: true

# docs
class ApplicationController < ActionController::Base
  before_action :set_current_request_details
  before_action :authenticate
  helper_method :current_user, :user_signed_in?

  private

  def authenticate
    if (session_record = Session.find_by(id: cookies.signed[:session_token]))
      Current.session = session_record
    else
      redirect_to sign_in_path
    end
  end

  def current_user
    Current.user || begin
      if (session_record = Session.find_by(id: cookies.signed[:session_token]))
        Current.session = session_record
        Current.session.user
      end
    end
  end

  def user_signed_in?
    current_user.present?
  end

  def set_current_request_details
    Current.user_agent = request.user_agent
    Current.ip_address = request.ip
  end

  def current_company
    @current_company ||= current_user.company if user_signed_in?
  end
  helper_method :current_company
end
