class UserSessionController < ApplicationController
  def destroy
    current_user_session.destroy
    redirect_to new_user_session_url
  end
end
