#!/usr/bin/env tclsh

source quadratic_equation.tcl

# main{} function runs functions and prints output in console
proc main {} {
    puts "Enter the first coefficient:"
    set a [input_number]
    puts "Enter the second coefficient:"
    set b [input_number]
    puts "Enter the third coefficient:"
    set c [input_number]
    puts "The quadratic equation looks like this: ${a}*x^2 + ${b}*x + ${c} = 0"
    puts [solve $a $b $c]
}

if { $::argv0 eq [info script] } {
    main
}