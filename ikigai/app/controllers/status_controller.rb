class StatusController < ApplicationController
	before_action :load_application

  def show
    @status = Review.find(params[:id])
  end

  def create
    @status = @application.status.build(review_params)
    @status.user = current_user

    if @status.save
      redirect_to applications_path, notice: 'Application created successfully'
    else
      render 'application/show'
    end
  end

  def destroy
    @status = Status.find(params[:id])
    @status.destroy
  end

  private
  def status_params
    params.require(:status).permit(:comment, :application_id)
  end

  def load_application
    @application = Application.find(params[:application_id])
  end
end