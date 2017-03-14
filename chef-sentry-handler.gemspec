$:.push File.expand_path("../lib", __FILE__)
require 'chef-sentry-handler/version'

Gem::Specification.new do |s|
  s.name        = "chef-sentry-handler"
  s.version     = ChefSentryHandler::VERSION
  s.authors     = ["5apps"]
  s.email       = ["greg@5apps.com"]
  s.homepage    = "https://github.com/5apps-caboose/chef-sentry-handler"
  s.summary     = %q{A sentry exception handler for Chef runs}
  s.description = %q{A sentry exception handler for Chef runs}
  s.has_rdoc    = false
  s.license     = "MIT"

  s.add_dependency('chef')
  s.add_dependency('sentry-raven')

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
