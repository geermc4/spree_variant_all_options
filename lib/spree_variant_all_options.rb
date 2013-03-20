require 'spree_variant_all_options/version'
require 'spree_core'

module SpreeVariantAllOptions
  class Engine < Rails::Engine
    engine_name 'spree_variant_all_options'

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    config.to_prepare &method(:activate).to_proc
  end
end
