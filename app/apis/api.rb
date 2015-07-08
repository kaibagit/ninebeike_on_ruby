require 'api_res'

class API < Grape::API
	puts "API is running"
	version 'v1', using: :header, vendor: 'Unirole'
	format :json
	prefix 'api'
	
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

		end

		post :logout do
		end
	end

end
