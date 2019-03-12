class PigLatinizer

  @@vowels = ["a", "e", "o", "u", "i", "A", "E", "O", "U", "I"]

  def piglatinize(text)
    # text = text.downcase
    arr = text.split(" ")
    new_arr = []
    arr.each do |word|
      if @@vowels.include?(word[0])
        word += "way"
        new_arr << word
      else
        first = word[0]
        second = word[1]
        third = word[2]
        if @@vowels.include?(second)
          word.slice!(0)
          word += first
          word += "ay"
          new_arr << word
        elsif @@vowels.include?(third)
          word.slice!(0..1)
          word += first
          word += second
          word += "ay"
          new_arr << word
        else
          word.slice!(0..2)
          word += first
          word += second
          word += third
          word += "ay"
          new_arr << word
        end
      end
    end
    new_arr.join(" ")
  end

end
