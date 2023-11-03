Describe "Test for 09_abuse" {
    BeforeAll {
        $Script:prg = ".\abuse.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test 01" {
        &$Script:prg -s 1 -n 1 | Should -BeExactly 'You scurilous, lecherous maw!'        
    }

    It "Test 02" {
        $actual = &$Script:prg -seed 2 
        
        $actual[0] | Should -BeExactly 'You indistinguishable, toad-spotted cur!'
        $actual[1] | Should -BeExactly 'You rotten, bankrupt butt!'
        $actual[2] | Should -BeExactly 'You loathsome, base villain!'
    }

    It "Test 03" {
        $actual = &$Script:prg -s 3 -n 5 -a 1

        $actual[0] | Should -BeExactly 'You sodden-witted traitor!'
        $actual[1] | Should -BeExactly 'You scurvy Judas!'
        $actual[2] | Should -BeExactly 'You old rogue!'
        $actual[3] | Should -BeExactly 'You thin-faced worm!'
        $actual[4] | Should -BeExactly 'You base barbermonger!'
    }

    It "Test 04" {
        $actual = &$Script:prg -seed 4 -number 2 -adjectives 4

        $actual[0] | Should -BeExactly 'You old, cullionly, detestable, toad-spotted maw!'
        $actual[1] | Should -BeExactly 'You foolish, sodden-witted, infected, insatiate scold!'        
    }
}
