#!/usr/bin/ruby
#ABC004-B

def main
    ls = input(4)
    b = process(ls)
    output(b)
end

def input(n)

    ls = Array.new
    n.times do
        ls << gets.chomp
    end
    ls
end

def process(ls)
    ns = interpret(ls)
    a = logic(ns)
    format(a)
end

def output(b)
    b.each do |l|
        puts l
    end
end

def interpret(ls)
    ns = Array.new
    ls.each do |l|
       ns << l.split
    end
    ns
end

def logic(ns)
    ns2 =  Array.new
    ns.reverse.each do |n|
        ns2 << n.reverse
    end
    ns2
end

def format(a)
    fa = Array.new
    a.each do |n|
        fa << n.join(" ")
    end
    fa   
end

#----- TEST
require 'minitest'

class ABC004BTest < Minitest::Test
    def test_1
        # 入力例①
        ls = [
            ". . . .",
            ". o o .",
            ". x x .",
            ". . . ."
        ]
        fa = process(ls)
        fa0 = [
            ". . . .",
            ". x x .",
            ". o o .",
            ". . . ."
        ]
        assert_equal fa0, fa
    end
    
    def test_2
        ls = [
            "o o x x",
            "o o x x",
            "x x o o",
            "x x o o"
        ]
        fa = process(ls)
        fa0 = [
            "o o x x",
            "o o x x",
            "x x o o",
            "x x o o"
        ]
        assert_equal fa0, fa
    end
end

#Minitest.run

#---------

main
