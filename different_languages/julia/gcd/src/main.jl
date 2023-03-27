#!/usr/bin/env julia


include("gcd.jl")

#the main() function runs functions from gcd.jl file
function main()
    a = check_validation("Enter a positive integer for a: ")
    b = check_validation("Enter a positive integer for b: ")
    result = gcd(a, b)
    println("The GCD of $a and $b is: $result")
end


if (abspath(PROGRAM_FILE) == @__FILE__)
    main()
end


