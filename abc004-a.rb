#!/usr/bin/ruby
#ABC004-A
def main
    n = input
    a = logic(n)
    output(a)
end
def input
    l1 = gets
    n = l1.to_i
    #return n
end
def logic(n)
    a = n * 2
    #return a
end
def output(a)
    puts "#{a}"

end

main