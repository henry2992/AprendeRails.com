class User < ActiveRecord::Base
	def self.from_omniauth(auth)
		# where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
			user.provider = auth.provider
			user.uid			= auth.uid
			user.name 		= auth.info.nickname
			user.save
		end
	end

end
