require 'rubygems'
require 'chef'
require 'chef/handler'
require 'raven'

class ChefSentryHandler < Chef::Handler
  def initialize(sentry_dsn)
    @sentry_dsn = sentry_dsn
    @timestamp = Time.now.getutc
  end

  def report
    Chef::Log.error("Chef run failed @ #{@timestamp}, sending to Sentry")

    Raven.configure do |config|
      config.server = @sentry_dsn
      config.ssl_verification = true
      config.current_environment = run_status.node.chef_environment
    end

    Raven.capture_exception(run_status.exception)
  end
end
