# frozen_string_literal: true

require 'net/http'

class HomeController < ApplicationController
  def index
    url = 'https://api.openweathermap.org/data/2.5/weather?lat=33.7490&lon=-84.3880&units=imperial&appid=ba4b16bf0945930092bbd711b77be042'
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end
