class VendorsController < ApplicationController
  def show
    vendor = params[:id]
    response = HTTParty.get("http://localhost:3000/api/v0/vendors/#{vendor}")
    @vendor = JSON.parse(response.body)
  end
end
