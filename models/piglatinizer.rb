class PigLatinizer
    attr_accessor :text
   
    def piglatinize(text)
        text_array = text.downcase.split(" ")
        latin_array = text_array.map do |word|
        if %w(a e i o u).include?(word[0])
            word << "way"
        else
            word[1..-1] << "pay"
        end
     end
     latin_array.join(" ").capitalize
    end

end