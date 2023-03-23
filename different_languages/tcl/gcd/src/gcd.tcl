#!/usr/bin/env tclsh

# the function gets two numbers in argument and returns
# their greatest common divider

proc gcd {a b} {
    while {$b != 0} {
        set temp $b
        set b [expr {$a % $b}]
        set a $temp
    }
    return $a
}


# the function inputs a number in user mode and checks its validation
proc input_number {} {
    set input [gets stdin]
    if {[string is int $input]} {
        return [string trim $input]
    } else {
        puts "Invalid input. Enter only integer."
        return [input_number]
    }
}
