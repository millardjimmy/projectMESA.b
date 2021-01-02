class ItemsController < ApplicationController
    before_action :find_item, only: [:update, :show]

    def index
      @items = Item.all
      render json: @items
    end
 
    def show
     # @item = Item.find(params[:id])
     render json: @item, status: 200
   end
 
     def create
      @item = Item.new(item_params)
      if @item.valid?
        @item.save
        render json: @item, status: :accepted
      else
        render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
      end
    end
 
 
    def update
      @item.update(item_params)
      if @item.save
        render json: @item, status: :accepted
      else
        render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
      end
    end
 
    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      render json: @items
    end
 
    private
 
    def item_params
      params.permit(:name, :image, :user_id, :box_id)
    end
 
    def find_item
      @item = Item.find(params[:id])
    end
 
 end
 
