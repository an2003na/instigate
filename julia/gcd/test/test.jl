#!/usr/bin/env julia


include("../src/gcd.jl")

function test1()
    a = 25
    b = 625
    result = gcd(a, b)
    if result == 25
        println("Test 1 passed.")
    else
        println("Test 1 failed.")
    end
end

function test2()
    a = 13
    b = 92
    if gcd(a, b) == 1
        println("Test 2 passed.")
    else
        println("Test 2 failed.")
    end
end

function test3()
    a = 64
    b = 12
    if gcd(a, b) == 4
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