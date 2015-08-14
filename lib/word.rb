class Word

  @@words = []

	attr_accessor :definitions, :name, :id

	define_method(:initialize) do | attributes |
		@name = attributes.fetch(:name).capitalize!
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

  define_singleton_method(:sort_words) do
    if @@words.length > 1
      @@words.sort! do | word1, word2 |
        word1.name.downcase <=> word2.name.downcase
      end
    else
      @@words
    end
  end

end
