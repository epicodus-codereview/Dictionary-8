class Word

  @@words = []

	attr_accessor :definitions, :name

	define_method(:initialize) do | attributes |
		@name = attributes.fetch :name
    @definitions = attributes.fetch :definitions, []
	end

  define_method(:save) do
    @@words.push(self)
  end


  define_singleton_method(:all) do
    @@words
  end

end
