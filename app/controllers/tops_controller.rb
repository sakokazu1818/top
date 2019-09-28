class TopsController < ApplicationController
  # GET /tops
  def index
    render :index_smart_phone, layout: 'anbridges_smart_phone.html.haml' if request.smart_phone?
  end
end
