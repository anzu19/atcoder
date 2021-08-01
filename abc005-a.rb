#!/usr/bin/ruby
#ABC004-B

def main
    ls = input(1)
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
    x, y = interpret(ls)
    a = logic(x, y)
    format(a)
end

def output(b)
    b.each do |l|
        puts l
    end
end

def interpret(ls)
    ns = ls[0].split
    x = ns[0].to_i
    y = ns[1].to_i
    return x, y
end

def logic(x, y)
    a = y / x
    a
end

def format(a)
    ["#{a}"]
end

#----- TEST
require 'minitest'

class ABC004BTest < Minitest::Test
    def test_1
        # 入力例①
        ls = [
            "4 8"
        ]
        fa = process(ls)
        fa0 = [
            "2"           
        ]
        assert_equal fa0, fa
    end
    
    def test_2
        ls = [
            "4 7"
        ]
        fa = process(ls)
        fa0 = [
            "1"
        ]
        assert_equal fa0, fa
    end

    def test_3
        ls = [
            "4 3"
        ]
        fa = process(ls)
        fa0 = [
            "0"
        ]
        assert_equal fa0, fa
    end
end

#Minitest.run

#---------

main
