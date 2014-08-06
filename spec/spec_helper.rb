require 'simplecov'
SimpleCov.start
require "sinatra"
require 'capybara/rspec'
require_relative '../lib/tdd'
Capybara.default_driver = :selenium
Capybara.app = Sinatra::Application
