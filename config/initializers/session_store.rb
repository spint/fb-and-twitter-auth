# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_st_auth_test_23_session',
  :secret      => '4d60580cd2b073642676bf807f5688c8cfc45076d86e9ac988918264e1ae44006a3ec9327a66849f37316840b6b1cc656163aa6b1ae2bedd9eb0b2be5a9fe83b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
