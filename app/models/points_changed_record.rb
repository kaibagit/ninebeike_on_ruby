class PointsChangedRecord < ActiveRecord::Base
	
	belongs_to :member,:foreign_key => "mid"
	#def initialize(member,title,changed_before,changed_points)
	#	@mid = member.id
	#	@title = title
	#	@changed_before = changed_before
	#	@changed_points = changed_points
	#	@changed_after = changed_before+changed_points
	#end
end
