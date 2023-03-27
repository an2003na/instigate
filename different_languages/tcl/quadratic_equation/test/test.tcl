#!/usr/bin/env tclsh


source ../src/quadratic_equation.tcl

proc test1 {} {
    set a 5
    set b 5
    set c 0
    set str1 [solve $a $b $c]
    set str2 "Roots of the equation are 0.0 and -1.0"
    if {$str1 eq $str2} {
        puts "Test 1 passed."
    } else {
        puts "Test 1 failed."
    }
}

proc test2 {} {
    set a 1
    set b 0
    set c 0
    set str1 [solve $a $b $c]
    set str2 "The equation has one real root: 0"
    if {$str1 eq $str2} {
        puts "Test 2 passed."
    } else {
        puts "Test 2 failed."
    }
}

proc test3 {} {
    set a 1
    set b 2
    set c 1
    set str1 [solve $a $b $c]
    set str2 "The equation has one real root: -1"
    if {$str1 eq $str2} {
        puts "Test 3 passed."
    } else {
        puts "Test 3 failed."
    }
}


proc main {} {
    test1
    test2
    test3
}

if { $::argv0 eq [info script] } {
    main
}