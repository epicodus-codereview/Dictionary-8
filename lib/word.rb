class Word

	attr_accessor :definitions

	define_method(:initialize) do | attributes |
		@name = attributes.fetch :name
    @definitions = attributes.fetch :definitions, []
	end

end
