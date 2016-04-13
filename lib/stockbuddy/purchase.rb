class Purchase
	attr_reader :user, :amount, :data
	def initialize(args)
		@user => args[:user]
		@amount => args[:amount]
		@data => args[:data]
	end

end