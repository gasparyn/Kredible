class ListingsController < ApplicationController
  def index
    @properties = Property.order(:address)
  end
end
