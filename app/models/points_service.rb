module PointsService
	def self.change_points(mid,title,changed_points)
		ActiveRecord::Base.transaction do
			member = Member.find mid
			changed_before = member.points
			changed_after = changed_before+changed_points
			member.points = changed_after
			member.save

			record = PointsChangedRecord.new
			record.mid = mid
			record.changed_before = changed_before
			record.chaged_points = changed_points
			record.changed_after = changed_after
			record.title = title
			record.save
		end
	end
end
