def echo (words)
    words
end

def shout (words)
    words.upcase
end

def repeat (words, *number)
    if number.empty? == false
        count = 0
        repeated_words = ""
        while count < number[0] do
            if count == number[0] - 1
                repeated_words = repeated_words + "#{words}"
            else
                repeated_words = repeated_words + "#{words}" + " "
            end
            count = count + 1
        end
    else
        repeated_words = "#{words}" + " " + "#{words}"
    end
    repeated_words
end

def start_of_word (word, letter_number)
    letters = word[0,letter_number]
end

def first_word (words)
    words.split.first
end

def titleize (words)
#    words.capitalize #capitalizes the first word
    words_array = words.split(" ")
    capitalized_words = ""
    little_words_first = []
    if (words_array.first == "and" or words_array.first == "or" or words_array.first == "over" or words_array.first == "the")
        little_words_first.push "#{words_array.first}"
    end
    words_array.each do |word|
        if (word == "and" or word == "or" or word == "over" or word == "the")
            if little_words_first.include? "#{word}"
                capitalized_words = capitalized_words + word.capitalize + " "
                little_words_first.pop
            else
                capitalized_words = capitalized_words + word + " "
            end
        else
            capitalized_words = capitalized_words + word.capitalize + " "
        end
    end
    capitalized_words.chomp(" ")

end
