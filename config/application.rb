require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(:default, Rails.env)

module HotelAdvisor
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec, fixtures: true, views: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
