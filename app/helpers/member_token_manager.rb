module MemberTokenManager

	def self.create_or_recreate_token(member_id)
		token = UUIDTools::UUID.timestamp_create().to_s.gsub('-','')
		$redis_user_token.set(token,member_id)
		token
	end

	def self.current_member_id(token)
		$redis_user_token.get(token)
	end

end