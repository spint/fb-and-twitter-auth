class User < ActiveRecord::Base

  acts_as_authentic

  before_create :fill_twitter_username

  def twitter_profile
    @twitter_profile ||= JSON.parse(access_token.get('/account/verify_credentials.json').body)
  end

  def fill_twitter_username
    
    if login.blank?
      self.login = self.twitter_profile['screen_name']
    end
  end


end
