class Provider::BaseController < ApplicationController  
  before_action :authenticate_provider!
  before_action :set_resource

  private

  def set_resource
    @provider = Provider.find(current_user.id)
  end
end