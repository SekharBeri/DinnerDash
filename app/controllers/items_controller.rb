class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]
  
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.create(item_params)
    if @item.present?
      redirect_to items_path
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    @item.update(item_params)
    redirect_to @item
  end
  
  def destroy
    @item.destroy
    redirect_to items_path
  end
  
  private
  
  def item_params
    params.require(:item).permit(:title, :description, :price)
  end
  
  def find_item
    @item = Item.find(params[:id])
  end
 
end
