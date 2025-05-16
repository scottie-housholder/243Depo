# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Configure emails
Rails.application.configure do
    config.action_mailer.delivery_method = :smpt

    config.action_mailer.smtp_settings = {
        address:        "smpt.gmail.com",
        port:           587,
        domain:         "domain.of.sender.net",
        authentication: "plain",
        user_name:      "dave",
        password:       "secret",
        enable_starttls_auto:   true
    }
end