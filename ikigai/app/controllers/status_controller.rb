class StatusController < ApplicationController
	before_action :load_application

  def show
    @status = Review.find(params[:id])
  end

  def create
    @status = @adocumentation.status.build(review_params)
    @status.user = current_user

    if @status.save
      redirect_to documentations_path, notice: 'Application created successfully'
    else
      render 'documentation/show'
    end
  end

  def destroy
    @status = Status.find(params[:id])
    @status.destroy
  end

  private
  def status_params
    params.require(:status).permit(:comment, :documentation_id)
  end

  def load_application
    @documentation = Documentation.find(params[:documentation_id])
  end
end