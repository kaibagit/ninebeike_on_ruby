module MemberTokenManager

	def self.create_or_recreate_token(user_id)
		token = UUIDTools::UUID.timestamp_create().to_s.gsub('-','')
		$redis_user_token.set(user_id,token)
		token
	end

end