class TextsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
  end
  def new
    @text = Text.new
  end
  def create
      @text = Text.new(text_params)
      if @text.save
  
        redirect_to root_path
      else
        render :new
      end
  end

  private
  def text_params
    params.require(:text).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten).merge(user_id: current_user.id)
  end
end