#!/usr/bin/env tclsh


source ../src/gcd.tcl

proc test1 {} {
    set a 25
    set b 625
    set res [gcd $a $b ]
    if {$res == 25} {
        puts "Test 1 passed."
    } else {
        puts "Test 1 failed."
    }
}


proc test2 {} {
    set a 13
    set b 92
    set res [gcd $a $b ]
    if {$res == 1} {
        puts "Test 2 passed."
    } else {
        puts "Test 2 failed."
    }
}


proc test3 {} {
    set a 64
    set b 12
    set res [gcd $a $b ]
    if {$res == 4} {
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
