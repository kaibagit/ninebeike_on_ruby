class Member < ActiveRecord::Base

	def self.send_vericode_to(mobile)
		SmsCerManager.send_vericode_to mobile
	end

	def self.login(mobile,vericode)
		logger.info("mobile => #{mobile} , vericode => #{vericode}")
	end

end
