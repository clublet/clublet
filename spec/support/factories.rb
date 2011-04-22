Factory.define(:authentication) do |a|
  a.uid { "uid#{Authentication.count.to_s}" }
end

Factory.define(:twitter_auth, :parent => :authentication, :class => Authentications::Twitter) do |a|
  a.access_token { ActiveSupport::SecureRandom.hex(10) }
  a.access_secret { ActiveSupport::SecureRandom.hex(10) }  
end
