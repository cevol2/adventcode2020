#!/usr/bin/env python3

# TOO MESSY, need to refactor with itertools

infile = open('expense2.txt', 'r')
lines = [int(line.strip()) for line in infile]

target = 2020
length = len(lines)

for i in range(length):
    targetDiff =  target - lines[i]
    for a in range(length-1):        
        ## If it equals 0, you have solved for Part 1
        if lines[a+1] == targetDiff:
            print ("PART1:" + str(lines[i]) + " and " + str(lines[a+1]))
        tripleDiff = targetDiff - lines[a+1]
        for b in range (length-2):
        ## If it equals 0, you have solved for Part 2
            if lines[b+2] == tripleDiff:
                print("PART2:" + str(lines[i]) + " " + str(lines[a+1]) + " " + str(lines[b+2]))

