#!/usr/bin/ruby
#ABC004-B

def main
    ls = input(0)
    b = process(ls)
    output(b)
end

def input(n)
    n = gets.to_i
    ls = Array.new
    n.times do
        ls << gets
    end
    ls
end

def process(ls)
    x = interpret(ls)
    a = logic(x)
    format(a)
end

def output(b)
    b.each do |l|
        puts l
    end
end

def interpret(ls)
    x = ls.map &:to_i
    return x
end

def logic(x)
    a = x.min
end

def format(a)
    ["#{a}"]
end

#----- TEST
require 'minitest'


class ABC004BTest < Minitest::Test
    def test_1
         #入力例①
        ls = [
            "3",
            "1",
            "2",
            "3"
        ]
        fa = process(ls)
        fa0 = [
            "1"           
        ]
        assert_equal fa0, fa
    end
    
    def test_2
        ls = [
            "7",
            "3",
            "4"
        ]
        fa = process(ls)
        fa0 = [
            "3"
        ]
        assert_equal fa0, fa
    end

    def test_3
        ls = [
            "3",
            "2",
            "9"
        ]
        fa = process(ls)
        fa0 = [
            "2"
        ]
        assert_equal fa0, fa
    end
end

#Minitest.run

#---------

main
