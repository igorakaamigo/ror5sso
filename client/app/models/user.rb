class User < ApplicationRecord
  def self.from_omniauth(hash)
    where(hash.slice(:uid)).first_or_initialize.tap do |user|
      user.uid = hash.uid
      user.email = hash.info.email
      user.token = hash.credentials.token
      user.expires_at = Time.at(hash.credentials.expires_at)
      user.save!
    end
  end
end
