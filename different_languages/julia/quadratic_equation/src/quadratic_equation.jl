#!/usr/bin/env julia

#the function gets a, b and c coefficients in argument
#and solves quadratic equation
function solve(a, b, c)
    discr = b^2 - 4*a*c
    if a == 0
        return "Error. Can not divide by zero."
    end
    if discr > 0
        root1 = (-b + sqrt(discr)) / (2 * a)
        root2 = (-b - sqrt(discr)) / (2 * a)
        return "Roots of the equation are $root1 and $root2"
    elseif discr == 0
        root1 = (-b) / (2 * a)
        return "The equation has one real root: $root1"
    else
        real_part = b / (2 * a)
        imag_part = sqrt(-discr) / (2 * a)
        root1 = "$real_part+$imag_part*i"
        root2 = "$real_part-$imag_part*i"
        return "The equation hasn't real roots.\nThe complex roots of equation are $root1 and $root2"
    end
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