# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_testsql_session',
  :secret      => '01d6ef0f5f372d7c6cdca690026ad00302c78b496ce10a7b4ba6600d8eb526268c2389c962b43d6d65bd5713de127a7182aa5fdbc9652fb180f80aa5c29acbe1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
