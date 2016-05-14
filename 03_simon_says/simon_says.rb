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
    firstword = ""
    current_letter = words[0,1]
    firstword = current_letter
    i = 2
    while current_letter != " " do
        firstword = firstword + words[0,i]
        i = i + 1
        current_letter = words[0,i]
    end
    firstword
end
