module ApplicationHelper
  def authenticated?
    begin
      user, pass = ActionController::HttpAuthentication::Basic::user_name_and_password(request)
    rescue
      user = nil
      pass = nil
    end
    user == AUTHOR_NAME && pass == AUTHOR_PASS 
  end


end
