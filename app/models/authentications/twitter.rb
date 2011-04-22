module Authentications
  class Twitter < Authentication
    validates_presence_of :access_token
    validates_presence_of :access_secret
  end
end

