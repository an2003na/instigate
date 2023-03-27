#!/usr/bin/env julia


include("quadratic_equation.jl")

#the main() function runs functions from quadratic_equation.jl file
function main()
    a = check_validation("Enter the first coefficient: ")
    b = check_validation("Enter the second coefficient: ")
    c = check_validation("Enter the third coefficient: ")
    println("The linear equation looks like this $a*x^2 + $b*x + $c = 0")
    println(solve(a, b, c))
end


if (abspath(PROGRAM_FILE) == @__FILE__)
    main()
end