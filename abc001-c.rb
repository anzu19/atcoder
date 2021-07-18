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

def calc_power(dis)
    ws = (dis / 60.0).round(1)

    wp = case
    when ws <=  0.2 then  0
    when ws <=  1.5 then  1
    when ws <=  3.3 then  2
    when ws <=  5.4 then  3
    when ws <=  7.9 then  4
    when ws <= 10.7 then  5
    when ws <= 13.8 then  6
    when ws <= 17.1 then  7
    when ws <= 20.7 then  8
    when ws <= 24.4 then  9
    when ws <= 28.4 then 10
    when ws <= 32.6 then 11
    else                 12
    end
end

def calc_direction(deg, w)
    dir = if w == 0
        "C"
    else
        d = (deg + 112) / 225 
        STDERR.puts "d=#{d}"
        case d 
        when  1 then "NNE"
        when  2 then "NE"
        when  3 then "ENE" 
        when  4 then "E"
        when  5 then "ESE"
        when  6 then "SE"
        when  7 then "SSE"
        when  8 then "S"
        when  9 then "SSW"
        when 10 then "SW"
        when 11 then "WSW"
        when 12 then "W"
        when 13 then "WNW"
        when 14 then "NW"
        when 15 then "NNW"
        else         "N"
        end
    end
end

def output(dir, w)
    puts "#{dir} #{w}"
end

main
