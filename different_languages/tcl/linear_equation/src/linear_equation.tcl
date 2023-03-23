#!/usr/bin/env tclsh

# the function gets 3 arguments (k and b coefficients and x variable)
# and finds y variable
proc find_y {k b x} {
    return [expr {$k*$x + $b}]
}

# the function gets 3 arguments (k and b coefficients and y variable)
# and finds x variable
proc find_x {k b y} {
    if {$y != $b && $k == 0} {
        return "No solution"
    } elseif {$y == 0 && $b == 0 && $k != 0} {
        return "Infinite solutions."
    } else {
        if {$k == 0} {
            return "Can not divide by zero."
        }
        return [expr {($y - $b) / $k}]
    }
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