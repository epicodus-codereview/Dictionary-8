class Word

	attr_accessor :definitions, :name

	define_method(:initialize) do | attributes |
		@name = attributes.fetch :name
    @definitions = attributes.fetch :definitions, []
	end

end
