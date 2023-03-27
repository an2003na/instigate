#!/usr/bin/env julia

include("../src/quadratic_equation.jl")

function test1()
    a = 5
    b = 5
    c = 0
    str1 = solve(a, b, c)
    str2 = "Roots of the equation are 0.0 and -1.0"
    if str1 == str2
        println("Test 1 passed.")
    else
        println("Test 1 failed.")
    end
end

function test2()
    a = 1
    b = 0
    c = 0
    str1 = solve(a, b, c);
    str2 = "The equation has one real root: 0.0";
    if str1 == str2
        println("Test 2 passed.")
    else
        println("Test 2 failed.")
    end
end

function test3()
    a = 1
    b = 2
    c = 1
    str1 = solve(a, b, c);
    str2 = "The equation has one real root: -1.0";
    if str1 == str2
        println("Test 3 passed.")
    else
        println("Test 3 failed.")
    end
end

function main()
    test1()
    test2()
    test3()
end



if (abspath(PROGRAM_FILE) == @__FILE__)
    main()
end


