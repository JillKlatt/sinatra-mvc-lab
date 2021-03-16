class PigLatinizer


    def piglatinize(input)
        split_input = input.split(" ")
        answer = split_input.collect do |word|
            piglatinize_word(word)
        end
        #binding.pry
        answer.join(" ")
    end

    def vowel?(character)
        character.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"            
        else
            vowel_list = word.index(/[aAeEiIoOuU]/)
            #binding.pry
            consonants = word.slice(0..(vowel_list - 1))
            letters = word.slice(vowel_list..word.length)
            letters + consonants + "ay"
        end
    end

end