class Purchase
	attr_reader :user, :data
	def initialize(args)
		@user => args[:user]
		@data => args[:data]
	end

end