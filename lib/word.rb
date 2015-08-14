class Word

  @@words = []

	attr_reader :definitions, :name, :id

	define_method(:initialize) do | attributes |
		@name = attributes.fetch(:name).capitalize! || attributes.fetch(:name)
    @definitions = attributes.fetch :definitions, []
    @id = @@words.length + 1
	end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:add_definition) do | definition |
    @definitions.push(definition)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:find) do | number |
    @@words.each do | word |
      if word.id == number
        return word
      end
    end
    nil
  end

end
