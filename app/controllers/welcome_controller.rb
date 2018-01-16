class WelcomeController < ApplicationController
  def index
  end

  def verify_service
    return  unless params[:service]
    @service = Service.find_by_id(params[:service][:msn])
    @account = Account.find(@service.account_id)
    if @service.blank?
      flash[:error] = "Invalid Service Number"
      redirect_to root_path
    else
      flash[:success] = "Service number matched."
    end
  end
end
