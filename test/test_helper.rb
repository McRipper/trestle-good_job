ENV['RAILS_ENV'] ||= 'test'
require 'bundler/setup'
require 'rails/all'
require ENV.fetch('ASSET_PIPELINE', 'sprockets-rails') == 'propshaft' ? 'propshaft' : 'sprockets/railtie'
require 'trestle/good_job'
require 'minitest/autorun'

class GoodJobTestApp < Rails::Application
  config.root = File.expand_path('dummy', __dir__)
  config.eager_load = false
  config.secret_key_base = 'good-job-test-secret-' * 4
  config.hosts.clear
  config.action_dispatch.show_exceptions = :all
  config.good_job.execution_mode = :external
end

GoodJobTestApp.initialize!
