require 'rails_helper'

RSpec.describe Member, type: :model do
	context 'login' do
		it "create new member and login" do
			mobile =  '15888033628'
			vericode = '123456'
			$redis_sms.set(mobile,vericode)
			login_before_member_num = Member.all.size
			Member.login(mobile,vericode)
			login_after_member_num = Member.all.size
			expect(login_after_member_num).to eq(login_before_member_num+1)
		end
	end
end
