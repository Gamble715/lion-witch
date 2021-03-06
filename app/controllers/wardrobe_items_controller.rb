class WardrobeItemsController < ApplicationController
  def index
    @wardrobe_items = WardrobeItem.all
    respond_to do |format|
      format.json { render json: @wardrobe_items}
    end
  end

  def show
    @wardrobe_item = WardrobeItem.find(params[:id])
    respond_to do |format|
      format.json { render json: @wardrobe_item}
    end
  end
end
