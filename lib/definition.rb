class Definition

	attr_accessor :statement

	define_method(:initialize) do | statement |
		@statement = statement
	end

end
