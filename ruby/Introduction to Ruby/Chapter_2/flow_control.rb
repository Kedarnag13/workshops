# Flow control in Ruby

#  Conditionals and loops alter the flow of a Ruby program. Conditionals are keywords that execute
#  a certain statement under a specific condition. Loops are blocks of program that are executed 
#  multiple times. When the program is run, the statements are executed from the top of the source
#  file to the bottom. One by one.


# The if statement
# ----------------
# The if keyword is used to check if an expression is true. If it is true, a statement is then executed.

num = 3

if num > 0
	puts "Number is greater than zero"
else
	puts "Number is lesser than zero"     #use elsif if you have multiple conditions
end

# Result:
#         Number is greater than zero


# Case statement
# --------------
# The case statement is a selection control flow statement. It allows the value of a variable or
# expression to control the flow of program execution.

condition = "us"

case condition

when "ind"
	puts "India"
when "us"
	puts "United States"
when "can"
	puts "Canada"
else
	puts "Unknown"
	
end

# Result:
#        United States


# While condition
# ---------------
# The while statement is a control flow statement that allows code to be executed repeatedly based on 
# a given boolean condition. It executes the code while the condition is true.

$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

# Result:
#        Inside the loop i = 0
# 	     Inside the loop i = 1
# 	     Inside the loop i = 2
# 	     Inside the loop i = 3
# 	     Inside the loop i = 4


# Unless statement
# ----------------
# The unless statement provides an alternative mechanism to the if else construct.

unless i >= 10
    puts "Greater"
else
    puts "Lesser"
end

# Result:
#        Greater


# The for statement
# -----------------
# When the number of cycles is know before the loop is initiated, we can use the for statement.
# The for loop is used in conjunction with ranges.

for i in 0..9 do

    puts "#{i}"

end

# Result:
#       0
# 		1
# 		2
# 		3
# 		4
# 		5
# 		6
# 		7
# 		8
# 		9


# The each method
# ---------------
# In Ruby, we can use the each method to iterate through items of an array. It takes two parameters. 
# An element and a block. The element is put between pipes. It is a placeholder for the item of the 
# current iteration. The block is the code which is executed on each iteration.

planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter",
    "Saturn", "Uranus", "Neptune"]

planets.each do |planet| 

    puts planet
end

# Result:
# 	    Mercury
# 		Venus
# 		Earth
# 		Mars
# 		Jupiter
# 		Saturn
# 		Uranus
# 		Neptune



# The until statement
# -------------------
# Ruby's until statement differs from while in that it loops until a true condition is met.

i = 0
until i == 5
   puts i
   i += 1
end

# Result: 0
#         1
#         2
#         3
#         4



# The Ruby tiems method
# ---------------------
# The times method provides an extremely convenient alternative to the for loop. The times method is 
# provided by the Integer class and allows a task to be performed a specific number of times.

5.times { |i| puts i }

# Result:
# 		0
# 		1
# 		2
# 		3
# 		4


# Break Statement
# ---------------
# This terminates the innermost loop.

i = 1
while i > 0
    puts i
    break if i == 2
    i += 1
end

# Result:
#        1
#        2



# Ruby next statement
# -------------------
# This jumps to the next immediate iteration of the innermost loop.

for j in 0..4
   if j<2
        next
    end
    puts j
end

# Result: 
# 		( When j = 0 and j = 1, the loop skips to the next iteration as soon as it encounters
# 		 the next statement. )
# 		2
# 		3
# 		4















