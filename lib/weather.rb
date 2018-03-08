#!/usr/bin/env ruby

require 'net/http'
require 'open-uri'
require 'json'
require 'pp'
require 'pry'

class Weather < ActiveRecord::Base

  def get_weather(lat, lng)
    darksky = "https://api.darksky.net/forecast/"
    key = "c8ab0a54e45119b58c074c1c58bb855a"
    url = "#{darksky}#{key}/#{lat},#{lng}"

    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def forecast
    weather = JSON.parse(self.get_weather(latitude, longitude))
    summary = weather['currently']['summary']
    icon = weather['currently']['icon']
    temperature = weather['currently']['temperature']

    collected_weather = { 'summary' => summary, 'icon' => icon, 'temperature' => temperature }
  end
end

# weather = Weather.new
# puts weather.forecast
