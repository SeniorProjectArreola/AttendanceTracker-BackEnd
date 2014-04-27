class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	@admin_events = current_user.admin_events
  	@client_events = current_user.client_events
  end
end
