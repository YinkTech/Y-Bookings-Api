#config/initializers/session_store.rb
if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: 'y-bookings-api', domain: 'y-bookings-api-json-api'
else
  Rails.application.config.session_store :cookie_store, key: 'y-bookings-api'
end