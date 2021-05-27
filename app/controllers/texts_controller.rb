class TextsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_text, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @texts = Text.all.order('created_at DESC')
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
  def show
  end

  def edit
  end
  
  def update
    if @text.update(text_params)
      redirect_to text_path
    else
      render :edit
  end
  def destory
    redirect_to root_path if @text.destroy
  end



  private
  def text_params
    params.require(:text).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten).merge(user_id: current_user.id)
  end

  def set_text
    @text = Text.find(params[:id])
  end
  def move_to_index
    redirect_to root_path if current_user.id != @text.user_id 
   
  end
 end
end
