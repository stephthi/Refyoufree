class DocumentationController < ApplicationController
  def index
    @documenation = Documentation.all
  end

  def create
  	@documenation = Documentation.new(documentation_params)
  end

  def destroy
    @documentation.destroy
  end

  def show
  @documentation = documentation.find(params[:id])

  if current_user
    @status = @documentation.status.build
  end
end

private

def documentation_params
	params.require(:documentation).permit(:text)
 end
end