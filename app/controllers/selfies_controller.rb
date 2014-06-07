class SelfiesController < ApplicationController
  # POST /tasks
  def create
    @selfie = Selfie.new(selfies_params)
    @selfie.event_id = params[:event_id]
    if @selfie.save
      render json: {upload: 'ok'}
    else
      render json: {upload: 'ko'}
    end
  end

  protected
  def event_id_param
    params.permit(:event_id)
  end
  def selfies_params
    params.permit(:selfie, :event_id)
    params.require(:selfie).permit(:image, :selfie)
  end
end
