module Lexicon
	def Lexicon.scan(sentence)
		words = sentence.split
		# my dictionary items
		directions = ["north", "south", "east", "west", "down", "up", "left", "right", "back"]
		verbs = ["go", "stop", "kill", "eat"]
		stops = ["the", "in", "of", "from", "at", "it"]
		nouns = ["door", "bear", "princess", "cabinet"]
		# empty result, to be populated with whatever I want to return
		result = []
		# iterates over the words array to determine which type of word each word is
		words.each do |word|
			word_dc = word.downcase
			if directions.include?(word_dc)
				result << ["direction", word] 
			elsif verbs.include?(word_dc)
				result << ["verb", word]
			elsif stops.include?(word_dc)
				result << ["stop", word]
			elsif nouns.include?(word_dc)
				result << ["noun", word]
			elsif convert_number(word_dc)
				result << ["number", convert_number(word)]
			else
				result << ["error", word]
			end
		end
		return result
	end

	def Lexicon.convert_number(numstring)
		begin
			return Integer(numstring)
		rescue
			return nil
		end
	end
end