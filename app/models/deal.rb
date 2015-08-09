class Deal < ActiveRecord::Base
	enum status: {
		closed:0,
		booking:1,
		assigned:2,
		on_the_way: 3,
		retrieved:4,
		paied:5 
	}
end
