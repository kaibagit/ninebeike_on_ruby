require 'api_res'

class NineBeikeAPI < Grape::API
	puts "API is running"
	version 'v1', using: :header, vendor: 'Unirole'
	format :json
	prefix 'api'

	helpers do
	    def authenticate!
	    	auth_token = cookies['auth-token']
	    	@current_member_id = MemberTokenManager.current_member_id(auth_token)
	    	error!({:code => ApiResCode::MemberCode::InvalidToken}) unless @current_member_id
	    end
	end

	rescue_from :all do |e|
		Rails.logger.error e
    	error!({:code => ApiResCode::CommonCode::ServerError,:message => e.message})
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
			authenticate!
		end
	end

end
