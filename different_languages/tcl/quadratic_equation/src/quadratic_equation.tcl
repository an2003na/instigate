#!/usr/bin/env tclsh

#the function gets a, b and c coefficients in argument
#and solves quadratic equation
proc solve {a b c} {
    set discr [expr {$b * $b - 4 * $a * $c}]
    if {$a == 0} {
        return "Error. Can not divide by zero."
    }
    if {$discr > 0} {
        set root1 [expr {(-$b + sqrt($discr)) / (2 * $a)}]
        set root2 [expr {(-$b - sqrt($discr)) / (2 * $a)}]
        return "Roots of the equation are $root1 and $root2"
    } elseif {$discr == 0} {
        set root1 [expr {- $b / (2 * $a)}]
        return "The equation has one real root: $root1"
    } else {
        set real_part [expr {$b / (2 * $a)}]
        set imag_part [expr {sqrt(-$discr) / (2 * $a)}]
        set root1 "$real_part+$imag_part i"
        set root2 "$real_part-$imag_part i"
        return "The equation hasn't real roots.\nThe complex roots of equation are $root1 and $root2"
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
