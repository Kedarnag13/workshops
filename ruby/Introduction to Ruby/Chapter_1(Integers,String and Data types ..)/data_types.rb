# Ruby has several data types. All data types are based on classes. The following are the data types recognized in Ruby:

# 1.Booleans
# 2.Symbols
# 3.Numbers
# 4.Strings
# 5.Arrays
# 6.Hashes 


# Strings
# -------

# Ruby strings aren't much different from other languages you're probably used to. You can use both 
# double quotes and single quotes to create strings:

my_string = "Hello, World!"
 
my_other_string = 'My name is Ram'

# Ruby offers string interpolation: "embedding" the result of some code inside a string.
name = "Andrew"
greeting = "Hello, my name is #{name}"

  # Result:
  #        1. "Hello, World!"
  #        2. "My name is Ram"
  #        3. "Andrew"
  #        4. "Hello, my name is Andrew"


# Numbers
# -------

# Ruby can handle both integers and floating point numbers (numbers with decimals),
# and it does it just how you would expect:
ten = 10
fifteen_point_two = 15.2
 
twenty_five_point_two = ten + fifteen_point_two;
    
	# Result:
	#        1: 10
	#        2: 15.2
	#        3: 25.2


# Arrays
# ------

# There are two ways to create an empty array:

# First Way
my_arr = Array.new

# Second Way 
my_other_arr = []
 
my_array = ["one", "two", "three"]

my_arr.push("four")

my_arr[1] = "seven"
 
my_arr[0] # one
 
   # Result:
   #        1: []
   #        2: []
   #        3: ["one","two","three"]
   #        4: ["one","two","three","four"]
   #        5: "seven"
   #        6: "one"


# Hashes
# ------

# A hash in Ruby is like an object literal in JavaScript or an associative array in PHP.
# They're made similarly to arrays:
my_hash = Hash.new
 
my_other_hash = {}

my_hash["name"] = "Andrew"
 
my_hash[:age] = 20

person = { :name => "Joe", :age => 35, :job => "plumber" }

   # Result:
   #        1: {}
   #        2: {}
   #        3: "Andrew"
   #        4: 20
   #        5: {:name=>"Joe", :age=>35, :job=>"plumber"}


# Methods on Objects
# ------------------

# Because everything in Ruby is an object, pretty much everything has methods that you can run:

name = "Andrew"

name.methods

name.upcase

name.downcase
 
  # Result:
   #        1: "Andrew"
   #        2: List of Methods
   #        3: "ANDREW"
   #        4: "andrew"

   














