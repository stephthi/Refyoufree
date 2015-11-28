class DocumentationsController < ApplicationController
  def index
    @documenation = Documentation.all
  end

  def new
    @documentation = Documentation.new
  end

  def create
  	@documentation = Documentation.new(documentation_params)
    @documentation.user = current_user
    if @documenation.save
  		redirect_to documentations_url, notice: "Your application has been received.."
  	else
  		redirect_to documentationd_url(@documentation), notice: "Sorry, please try again."
  	end
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
    # Use callbacks to share common setup or constraints between actions.
    def set_documentation
      @documentation = Documentation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documentation_params
      params.require(:documentation).permit(:text)
    end
end

