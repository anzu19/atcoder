#!/usr/bin/ruby
#ABC003-B

def main
    s, t = input
    a = logic(s, t)
    output(a)
end

def input
    l1 = gets
    l2 = gets
    s = l1.chomp
    t = l2.chomp
    return s, t
end

def logic(s, t)
    return true if s == t
    return false if s.size != t.size
    sa = s.chars
    ta = t.chars
    a = true
    s.size.times do |i|
        if comp(sa[i], ta[i]) == false
            a = false
            break
        end
    end
    return a
end

def comp(sc, tc)
    return true if sc == tc
    return false if sc != "@" && tc != "@"
    if sc == "@"
        return atcoder?(tc)
    elsif tc == "@"
        return atcoder?(sc)
    else
        return false
    end
end

def atcoder?(c)
    a = false
    "atcoder".chars.each do |x|
        a = true if c == x
    end
    return a
end

def output(a)
    if a == true
        puts "You can win"
    else
        puts "You will lose"
    end
end

main