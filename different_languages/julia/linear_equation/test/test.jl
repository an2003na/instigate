#!/usr/bin/env julia


include("../src/linear_equation.jl")

function test1()
    k = 2
    b = 3
    result = solve(k, b)
    if result == -1.5
        println("Test 1 passed.")
    else
        println("Test 1 failed.")
    end
end

function test2()
    k = 8
    b = -24
    if solve(k, b) == 3.0
        println("Test 2 passed.")
    else
        println("Test 2 failed.")
    end
end

function test3()
    k = 20
    b = 1
    if solve(k, b) == -0.05
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