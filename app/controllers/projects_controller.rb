class ProjectsController < Xavius::Controller::Base
  private
    # Only allow a list of trusted parameters through.
    def resource_params
      params.require(:project).permit(:name, :type, :code)
    end
end
