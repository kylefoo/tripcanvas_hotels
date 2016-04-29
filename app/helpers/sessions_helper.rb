module SessionsHelper
  def store_location
    session[:return_to] = request.original_url
  end

  def deny_access
    redirect_to new_user_session_path
  end
 
  def anyone_signed_in?
    !current_user.nil?
  end
 
  private
 
  def clear_stored_location
    session[:return_to] = nil
  end
end
