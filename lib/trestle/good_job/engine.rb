module Trestle
  module GoodJob
    class Engine < ::Rails::Engine
      initializer "trestle.good_job.assets" do
        config.assets.precompile << "trestle/good_job.css" if defined?(Sprockets)
      end
    end
  end
end
