class WarehousesController < ApplicationController
  expose :warehouses, -> {Warehouse.all} 
  expose :warehouse

  def index
  end

  def create
    warehouse.user_id = current_user.id
    if warehouse.save
      redirect_to warehouses_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private
  def warehouse_params
    params.require(:warehouse).permit(:name, :description, :city, :country, :zip_code, :area)
  end

end
