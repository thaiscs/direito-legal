# frozen_string_literal: true

require Rails.root.join("config", "environments", "production")

# Changes to the staging environment can be added here
Rails.application.configure do
  config.action_mailer.show_previews = true
  config.action_mailer.default_url_options = { host: Socket.gethostname }
end
