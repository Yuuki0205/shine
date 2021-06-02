class LikesController < ApplicationController
before_action :text_params
  def create
    Like.create(user_id: current_user.id, text_id: params[:id])
    
  end
  def destroy
    Like.find_by(user_id: current_user.id, text_id: params[:id]).destroy
   
  end
private
def text_params
  @text = Text.find(params[:id])
end
end
