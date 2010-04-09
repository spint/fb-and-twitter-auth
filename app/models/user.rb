class User < ActiveRecord::Base

  acts_as_authentic

  before_create :fill_twitter_username



  def before_connect(facebook_session)
    #self.name = facebook_session.user.name
    puts "***********************************************"
    puts "***********************************************"
    puts facebook_session.inspect
    puts facebook_session.user.inspect
    puts "***********************************************"
    puts "***********************************************"
  end


  def twitter_profile
    @twitter_profile ||= JSON.parse(access_token.get('/account/verify_credentials.json').body)
  end

  def fill_twitter_username
    
    if login.blank?
      self.login = self.twitter_profile['screen_name']
    end
  end


end
