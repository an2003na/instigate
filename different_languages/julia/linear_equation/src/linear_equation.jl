#!/usr/bin/env julia

# the function gets 2 arguments (k and b coefficients) and finds x variable
function solve(k, b)
    if k == 0
        return "Can not devide by zero."
    end
    return -b/k;
end


# the function uses the readline() function in Julia
# to get user input from the command line
function input(prompt::String)
    print(prompt)
    return readline()
end

# the function gets user input and checks its validation.
# The input must be a positive integer.
function check_validation(prompt::String)
    while true
        print(prompt)
        input_str = readline()
        if tryparse(Float64, input_str) != nothing
            return parse(Float64, input_str)
        end
        println("Invalid input. Please enter a number.")
    end
end


