class PropertiesController < ApplicationController

  before_action :require_authentication

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user_id = session[:user_id]
    if @property.save
      redirect_to root_path, notice: 'Criado com sucesso'
    else
      render :new
    end
  end

  private

  def property_params
    params.require(:property).permit(:title, :description,
      :price)
  end

end