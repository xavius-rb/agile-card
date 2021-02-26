class CardsController < Xavius::Controller::Base
  # GET /cards/1
  # GET /cards/1.json
  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: CardSerializer.new(@card) }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def resource_params
      params.require(:card).permit(:title, :description)
    end
end
