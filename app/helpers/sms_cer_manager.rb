module SmsCerManager

	def self.send_vericode_to(mobile)
		vericode = rand(999999).to_s
		Rails.logger.info("验证码：#{mobile} => #{vericode}")
		$redis_sms.set(mobile,vericode)
		$redis_sms.expire(mobile,300)
	end


end