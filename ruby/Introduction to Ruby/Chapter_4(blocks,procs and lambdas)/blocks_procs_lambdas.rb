# Blocks
# - A block consists of chunks of code.
# - You assign a name to a block.
# - The code in the block is always enclosed within braces ({}).
# - A block is always invoked from a function with the same name as that of the block. This means that 
#   if you have a block with the name test, then you use the function test to invoke this block.
# - You invoke a block by using the yield statement.
# 		Syntax: block_name{
# 		                    statement1
# 	 	                    statement2
# 		                    ..........
# 		                   }


# Here, you will learn to invoke a block by using a simple yield statement. You will also learn to use 
# a yield statement with parameters for invoking a block. You will check the sample code with both types 
# of yield statements.

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}

# Result:
# 		You are in the method
# 		You are in the block
# 		You are again back to the method
# 		You are in the block


# You also can pass parameters with the yield statement. Here is an example:

def test
   yield 5
   puts "You are in the method test"
   yield 100
end
test {|i| puts "You are in the block #{i}"}

# Result:
#        You are in the block 5
#        You are in the method test
#        You are in the block 100


# Here, the yield statement is written followed by parameters. You can even pass more than one parameter.
# In the block, you place a variable between two vertical lines (||) to accept the parameters. Therefore,
# in the preceding code, the yield 5 statement passes the value 5 as a parameter to the test block.

test {|i| puts "You are in the block #{i}"}
# Here, the value 5 is received in the variable i. Now, observe the following puts statement:
puts "You are in the block #{i}"

# Result: You are in the block 5

# Begin and End blocks
# --------------------
# Every Ruby source file can declare blocks of code to be run as the file is being loaded (the BEGIN 
# blocks) and after the program has finished executing (the END blocks).

BEGIN { 
  # BEGIN block code 
  puts "BEGIN code block"
} 

END { 
  # END block code 
  puts "END code block"
}
  # MAIN block code 
puts "MAIN code block"

# A program may include multiple BEGIN and END blocks. BEGIN blocks are executed in the order they are
# encountered. END blocks are executed in reverse order. When executed, above program produces the 
# following result.

# Result: 
#        BEGIN code block
#        MAIN code block
#        END code block



# Proc:
# -----
# Proc objects are blocks of code that have been bound to a set of local variables. Once bound, the 
# code may be called in different contexts and still access those variables.
toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call

# Result:
#        Cheers!
# 	     Cheers!
# 	     Cheers!



# Lambdas:
# --------
# a lambda is just a function... peculiarly... without a name. They're anonymous, little functional 
# spies sneaking into the rest of your code. Lambdas in Ruby are also objects, just like everything 
# else! The last expression of a lambda is its return value, just like regular functions.

# As objects, lambdas have methods and can be assigned to variables. Let's try it!
l = lambda { "Do or do not" }
puts l.call

# Result:
#        Do or do not


# Notice that our anticipatorily apologetic string is the return value of the lambda which we see by 
# printing it using puts. Now, while this is a lovely string, perhaps we'd like to return something more 
# interesting. Lambdas take parameters by surrounding them with pipes.
l = lambda do |string|
  if string == "try"
    return "There's no such thing" 
  else
    return "Do or do not."
  end
end
puts l.call("try") # Feel free to experiment with this
 
# Result:
#        There's no such thing






