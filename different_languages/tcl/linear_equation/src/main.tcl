#!/usr/bin/env tclsh

source linear_equation.tcl

# main{} function runs functions and prints output in console
proc main {} {
    puts "The linear equation looks like this: y = kx + b."
    puts "Enter the first coefficient:"
    set k [input_number]
    puts "Enter the second coefficient:"
    set b [input_number]
    puts "Enter the value of x to find y: "
    set x [input_number]
    puts "y = [find_y $k $b $x]"
    puts "Enter the value of y to find x: "
    set y [input_number]
    puts "x = [find_x $k $b $y]"
}

if { $::argv0 eq [info script] } {
    main
}
