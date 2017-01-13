class User < ApplicationRecord
  has_many :reps
  
  def self.from_omniauth(auth)
    user = find_or_create_by(uid: auth['uid'], provider: auth['provider'])
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
    return user
  end
end
