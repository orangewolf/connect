Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
                                          :user_name => 'c2n',
                                          :password => '847350cbd49e5230',
                                          :address => 'mailtrap.io',
                                          :domain => 'mailtrap.io',
                                          :port => '2525',
                                          :authentication => :cram_md5
                                        }

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  require 'braintree'
  Braintree::Configuration.environment = :sandbox
  #Braintree::Configuration.logger = Logger.new('log/braintree.log')
  Braintree::Configuration.merchant_id = "mwzyb7nrf8mpf8xh"
  Braintree::Configuration.public_key = "2fst3wjwjr6ggstc"
  Braintree::Configuration.private_key = "00cc35bcc61ef7d5d3e3b854b3583191"

end
