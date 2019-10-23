class PigLatinizer

    def piglatinize(text)
      array = text.split(" ")
        new_array = array.map do |word|
          if word.start_with?(/[aeouiAEIOU]/)
            word << "way"
          else
            beginning_of_word = word.split(/[aeoui]/).first
            end_of_word = word.slice(beginning_of_word.length..-1)
            end_of_word << beginning_of_word << "ay"
            end
          end
          new_array.join(" ")
    end 

end