# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_demo_qtip_session',
  :secret      => '80bc348fa2e0b8ebe32576148c57e535e937cc6d917dcc2a9974743de24cc61569b601ae83720f360066669a0e76e47a60a535f0e1373e5ade91276b6af23bd7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
