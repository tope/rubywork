# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
helper :all # include all helpers, all the time

  layout 'index'

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery  :secret => '6ef27ee840d1c68c8da72a85ea2f7487'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

  before_filter :require_facebook_login, :set_user
  include RFacebook::RailsControllerExtensions

	def facebook_api_key
	  return "f833fc469961979505d82062a8f88f7a" 
	end

	def facebook_api_secret
	  return "a76504b15b3e5394b0565ee853ff2cc9" 
	end

	def finish_facebook_login
	  redirect_to :controller => "recipes" 
	end

	def set_user
	  @current_fb_user_id = fbsession.session_user_id
	end






















end
