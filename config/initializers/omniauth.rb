Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Rails.application.secrets.oauth_google_client_id, Rails.application.secrets.oauth_google_client_secret, name: :google, hd: Rails.application.secrets.oauth_google_host_domain

  configure do |config|
    config.full_host = %W(#{Settings.omniauth.protocol} #{Settings.omniauth.hostname} #{Settings.omniauth.suffix}).join('')
  end
end
