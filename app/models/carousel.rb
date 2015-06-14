class Carousel < ActiveRecord::Base
	validates_presence_of :image
	validate :url_validation
	private
		def url_validation
			unless ulr.blank?
				unless(ulr =~ /[a-zA-z]+:\/\/[^\s]*/)
					errors[:ulr] << "格式不正确"
				end
			end
		end
end
