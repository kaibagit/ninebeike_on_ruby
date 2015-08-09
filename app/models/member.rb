class Member < ActiveRecord::Base
	
	has_many:points_changed_records,:foreign_key => "mid"

	def self.send_vericode_to(mobile)
		SmsCerManager.send_vericode_to mobile
	end

	def self.login(mobile,vericode)
		login_result = nil
		if SmsCerManager.veriy(mobile,vericode)
			member = Member.find_by_mobile(mobile)
			unless member
				member = Member.new
				member.mobile = mobile
				member.points = 0
				member.save
			end
			token = MemberTokenManager.create_or_recreate_token(member.id)
			login_result = LoginResult.new
			login_result.code = LoginResult.SuccessCode
			login_result.member = member
			login_result.token = token
		else
			login_result = LoginResult.new
			login_result.code = login_result.VerifyFailCode
		end
		login_result
	end
	
	def change_points(title,changed_points)
		
	end
end
