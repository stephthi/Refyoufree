class DocumentationController < ApplicationController
  def create
  end

  def destroy
  end

  def show
  @documentation = documentation.find(params[:id])

  if current_user
    @status = @documentation.status.build
  end
end

