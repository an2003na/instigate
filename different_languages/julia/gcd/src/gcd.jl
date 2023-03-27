#!/usr/bin/env julia

#the function gets two numbers in argument and returns
#their greatest common divider
function gcd(a, b)
    temp = 0
    while b != 0
        temp = b
        b = a % b
        a = temp
    end
    return a
end

# the function uses the readline() function in Julia
# to get user input from the command line
function input(prompt::String)
    print(prompt)
    return readline()
end

# the function gets user input and checks its validation.
# The input must be a positive integer.
function check_validation(message::String)
    str = input(message)
    if all(isdigit, str)
        num = parse(Int, str)
        if num > 0
            return num
        end
    end
    println("Your input is invalid. Enter only positive integers: ")
    return check_validation(message)
end

