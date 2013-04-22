class ReportsController < ApplicationController

	before_filter :signed_in_user
	before_filter :admin_or_supervisor

  def reports
  	@user=User.all
  	@report=@user.find(params[:attendance])
  end

  private

  def admin_or_supervisor
  	redirect_to (root_path) unless current_user.admin? || current_user.supervisor?
  end

end
