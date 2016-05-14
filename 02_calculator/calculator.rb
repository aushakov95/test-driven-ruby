def add (first_number, second_number)
    sum = first_number + second_number
end

def subtract (first_number, second_number)
    difference = first_number - second_number
end

def sum(array)
    sum_of_elements = 0
    array.each do |number|
        sum_of_elements = sum_of_elements + number
    end
    if array.empty?
        sum_of_elements = 0
    end
    sum_of_elements
end

def multiply (*numbers)
    product = 1
    numbers.each do |number|
        product = product * number
    end
    product
end

def power (first_number, second_number)
    exponentiation = 1
    iterator = 0
    while iterator < second_number
        exponentiation = exponentiation * first_number
        iterator = iterator + 1
    end
    exponentiation
end
