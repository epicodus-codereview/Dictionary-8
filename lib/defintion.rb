class Definition

	attr_reader :statement
	
	define_method(:initialize) do | statement |
		@statement = statement
	end

end
