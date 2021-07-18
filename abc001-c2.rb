#!/usr/bin/ruby
# ABC001-C

def main
  deg, dis = input
  dir, w = logic(deg, dis)
  output(dir, w)
end

def input
    l1 = gets
    l1 = l1.split
    deg = l1[0].to_i
    deg = if deg < 0 then 0 else deg end
    dis = l1[1].to_i

    #STDERR.printf("%d/%d\n", deg, dis)
    return deg, dis
end

def logic(deg, dis)
    dir = "C"
   # w = dis / 60


    w = calc_power(dis)
    dir = calc_direction(deg, w)
    return dir, w
end

WS = [0.2, 1.5, 3.3, 5.4, 7.9, 10.7, 13.8, 17.1, 20.7, 24.4, 28.4, 32.6]

def calc_power(dis)
    ws = (dis / 60.0).round(1)
    wp = 0
    WS.each do |s|
        break if ws <= s
        wp = wp + 1
    end
    #STDERR.puts "wp = #{wp}"
    return wp

end

DIR = ["N", "NNE", "NE", "ENE", "E", "ESE", "SE", "SSE",
       "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW"]

def calc_direction(deg, w)
    dir = if w == 0
        "C"
    else
        d = ((deg + 112) % 3600) / 225 
        #STDERR.puts "d=#{d}"
        DIR[d]

    end
end

def output(dir, w)
    puts "#{dir} #{w}"
end

main
