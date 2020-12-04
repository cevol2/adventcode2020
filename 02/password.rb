#!/usr/bin/ruby -w

# Part 1 Check
def part1Check(string, substring, min, max)
    if (string.scan(/(?=#{substring})/).count) >= min.to_i         
        if string.scan(/(?=#{substring})/).count <= max.to_i           
            return true
        end
    end
    return false
end

# Part 2 Check
def part2Check(string, substring, min, max)
    a = false
    b = false
    if (string[min.to_i - 1]) == substring
        a = true
    end
    if (string[max.to_i - 1]) == substring
        b = true
    end
    if (a == true && b == true) 
        return false
    elsif (a == false && b == false)
        return false
    else
        return true
    end
    
end

part1 = 0
part2 = 0

File.foreach("input.txt") { |line| 

    # Split the lines into different sections
    lines = line.split()

    # First find max and min values
    range = lines[0].split("-")
    min = range[0]
    max = range[1]
    
    # Find Character for password max and min values
    passwordchar = lines[1].delete(':')
    if(part1Check(lines[2],passwordchar,min,max))
        part1 += 1
    end

    # Find Character Index for values used by min and max
    if(part2Check(lines[2],passwordchar,min,max))
        part2 += 1
    end
    
}
print ("Part1: " + part1.to_s + "\n")
print ("Part1: " + part2.to_s + "\n")
