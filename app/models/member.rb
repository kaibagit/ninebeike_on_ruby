class Member < ActiveRecord::Base

	def self.send_vericode_to(mobile)
		logger.info("mobile => #{mobile}")
	end

	def self.login(mobile,vericode)
		logger.info("mobile => #{mobile} , vericode => #{vericode}")
	end

end
