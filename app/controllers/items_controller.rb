class ItemsController < ApplicationController
    def index
        items = Item.all.order(rating: :desc)
        render json: items, include: :user
      end
    
end
