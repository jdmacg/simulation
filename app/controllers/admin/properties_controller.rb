class Admin::PropertiesController < Admin::ApplicationController
  before_action :require_admin

  def index
    @properties = Property.all
  end



end
