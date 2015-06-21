class API < Grape::API
	puts "API is running"
	version 'v1', using: :header, vendor: 'Unirole'
	format :json
	prefix 'api'
	
	resource 'carousels' do
		get do
			Carousel.all
		end
	end
end
