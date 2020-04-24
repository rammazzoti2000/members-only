class ApplicationController < ActionController::Base
  def signed_in_only!
    if !current_user
      redirect_to  new_user_session_path
    end
  end
end
