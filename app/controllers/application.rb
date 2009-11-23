# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery :secret => '94952245be247914d60509e07c6e5f06'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  before_filter { |c| Authorization.current_user = c.current_user }

  filter_parameter_logging :password
  
  def current_user
  	session[user_id] ? @current_user || = User.find(session[:user_id]) : nil
  end
  
end
