class UserSession < Authlogic::Session::Base

  def self.oauth_consumer
    #OAuth::Consumer.new("TOKEN", "SECRET",
    OAuth::Consumer.new("VBJkYDpPxIdQ0300rycnrg", "ti7wvDefMrNazTlyv2U7iHMiLiXZo27tgEuL9Gns",
    { :site=>"http://twitter.com",
      :authorize_url => "http://twitter.com/oauth/authenticate" })
  end

end
