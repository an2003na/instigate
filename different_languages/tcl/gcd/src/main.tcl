#!/usr/bin/env tclsh

source gcd.tcl


proc main {} {
    puts "Greatest common divisor of two numbers:"
    puts "Enter the first number:"
    set a [input_number]
    puts "Enter the second number:"
    set b [input_number]
    set c [gcd $a $b]
    puts "Greatest common divisor of $a and $b is $c:"
}

if { $::argv0 eq [info script] } {
    main
}
