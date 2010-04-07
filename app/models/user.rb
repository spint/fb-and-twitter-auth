class User < ActiveRecord::Base

  acts_as_authentic

  def twitter_profile
    @twitter_profile ||= JSON.parse(access_token.get('/account/verify_credentials.json').body)
  end


end
