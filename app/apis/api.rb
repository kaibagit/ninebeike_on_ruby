require 'api_res'

class API < Grape::API
	puts "API is running"
	version 'v1', using: :header, vendor: 'Unirole'
	format :json
	prefix 'api'

	rescue_from :all do |e|
    	error!({:code => 0,:message => e.message})
  	end
	
	resource 'carousels' do
		get do
			res = ApiRes.new
			res.data = Carousel.all
			res
		end
	end

	resource 'members' do

		post :vericode do
			mobile = params[:mobile]
			Member.send_vericode_to mobile
			ApiRes.new
		end

		post :login do
			mobile = params[:mobile]
			vericode = params[:vericode]
			login_result = Member.login(mobile,vericode)
			res = ApiRes.new
			if login_result.code == LoginResult.SuccessCode
				member = login_result.member
				res.data = {
					:id		=> member.id,
					:mobile	=> member.mobile,
					:token		=> login_result.token
				}
			elsif login_result.code == LoginResult.VerifyFailCode
				res.code = ApiResCode::MemberCode.VerifyFail
			else
				raise 'not define login code'
			end
		end

		get :logout do
		end
	end

end
