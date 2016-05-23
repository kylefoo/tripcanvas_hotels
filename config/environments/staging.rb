Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = false
  config.assets.js_compressor = :uglifier
  config.assets.compile = true
  config.assets.digest = true
  config.log_level = :info
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
  config.assets.debug = true
  config.assets.raise_runtime_errors = true
  config.action_controller.asset_host = "staging.tripcanvas.co"
  config.force_ssl = false
  # Don't care if the mailer can't send.
  config.action_mailer.default_url_options = { host: 'tripcanvas.co'}
  config.action_mailer.raise_delivery_errors = false

end
