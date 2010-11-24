# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_boxboss-templates_session',
  :secret      => 'e192ee240a10efc61882b9c96081c27029a75687bb94ffec0112cbdc8c8a86403e17fef1c1bdb29e3950a2dc178921440c4a860842b25fe3c29df9a4ee6aefbb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
