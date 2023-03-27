#!/usr/bin/env julia


include("linear_equation.jl")

#the main() function runs functions from linear_equation.jl file
function main()
    k = check_validation("Enter the first coefficient: ")
    b = check_validation("Enter the second coefficient: ")
    println("The linear equation looks like this $k*x + $b = 0")
    result = solve(k, b)
    println("x = $result")
end


if (abspath(PROGRAM_FILE) == @__FILE__)
    main()
end