require 'sinatra'
require "nokogiri"
require "rspec"
require "sinatra/reloader"
require_relative './models/device.rb'
require_relative './controllers/devices_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run DevicesController