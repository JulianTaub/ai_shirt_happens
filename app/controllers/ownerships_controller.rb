class OwnershipsController < ApplicationController
  def create
    @shirt = Shirt.find(params[:shirt_id])
    current_user.shirts << @shirt
    current_user.like(@shirt)
    @recommendations  = current_user.recommended_shirts(4)
    redirect_to @shirt, notice: "#{shirt.name} has been added to your collection" 
  rescue ActiveRecord::RecordInvalid => e
    redirect_to @shirt, notice: e.message 
  end
end

