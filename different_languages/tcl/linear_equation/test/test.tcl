#!/usr/bin/env tclsh


source ../src/linear_equation.tcl

proc main {} {
    set k 2
    set b 2
    set x 2
    set y 2
    if {[find_x $k $b $y] == 0 && [find_y $k $b $x] == 6} {
        puts "Test passed."
    } else {
        puts "Test failed."
    }
}

if { $::argv0 eq [info script] } {
    main
}