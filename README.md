# Install

TODO: Publish gem

```
gem install chef-sentry-handler
```

# Usage

## Configure Chef to Use The Handler

Append the following to your Chef client configs, usually at `/etc/chef/client.rb`

```
[...]

# Notify admins via IRC when a Chef run fails
require 'chef-sentry-handler'

sentry_dsn = "https://your:secret@app.getsentry.com/app_id"
sentry_handler = ChefSentryHandler.new(sentry_dsn)
exception_handlers << sentry_handler
```

* License

  chef-sentry-handler is released under the [MIT license](MIT-LICENSE.txt).
