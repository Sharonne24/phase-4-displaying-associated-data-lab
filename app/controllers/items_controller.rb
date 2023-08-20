class ItemsController < ApplicationController
    def index
    items = Item.includes(:user).all
    render json: items.as_json(include: { user: { only: [:id, :username, :city] } })
  end
end
