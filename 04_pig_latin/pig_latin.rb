def translate (words)
    how_many_words = words.split(" ")
    words.downcase!
    if how_many_words.size >= 2
        words = ""
        how_many_words.each do |word|
            if (word[0] == "a" or word[0] == "e" or word[0] == "i" or word[0] == "o" or word[0] == "u")
                word = word + "ay"
            elsif (word[0] == "q" and word[1] == "u")
                word = word + "#{word[0]}" + "#{word[1]}" + "ay"
                word[0,2] = ""
            elsif (word[1] == "a" or word[1] == "e" or word[1] == "i" or word[1] == "o" or word[1] == "u")
                word = word + "#{word[0,1]}" + "ay"
                word[0,1] = ""
            else
                word = word + "#{word[0]}" + "#{word[1]}" + "ay"
                word[0,2] = ""
            end
            words = words + "#{word}" + " "
        end
        words = words.chomp(" ")
    elsif (words[0] == "a" or words[0] == "e" or words[0] == "i" or words[0] == "o" or words[0] == "u")
        words = words + "ay"
    elsif (words[0] == "q" and words[1] == "u")
        words = words + "#{words[0]}" + "#{words[1]}" + "ay"
        words[0,2] = ""
    elsif (words[1] == "a" or words[1] == "e" or words[1] == "i" or words[1] == "o" or words[1] == "u")
        words = words + "#{words[0]}" + "ay"
        words[0] = ""
    elsif (words[2] == "a" or words[2] == "e" or words[2] == "i" or words[2] == "o" or words[2] == "u")
        if words.include? "qu"
            words = "#{words}" + "#{words[0]}" + "#{words[1]}" + "#{words[2]}" + "ay"
            words[0,3] = ""
        else
            words = words + "#{words[0]}" + "#{words[1]}" + "ay"
            words[0,2] = ""
        end
    else
            words = words + "#{words[0]}" + "#{words[1]}" + "#{words[2]}" + "ay"
            words[0,3] = ""
    end
    words
end
