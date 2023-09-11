class MarketsController < ApplicationController
  include AddressHelper

  def index
    # require 'pry'; binding.pry
    response = HTTParty.get('http://localhost:3000/api/v0/markets')
    @markets = JSON.parse(response.body)
  end

  def show 
    # require 'pry'; binding.pry
    market_id = params[:id]
    response_market = HTTParty.get("http://localhost:3000/api/v0/markets/#{market_id}")
    @market = JSON.parse(response_market.body)
    vendors_response = HTTParty.get("http://localhost:3000/api/v0/markets/#{market_id}/vendors")
    @vendors = JSON.parse(vendors_response.body)
  end
end