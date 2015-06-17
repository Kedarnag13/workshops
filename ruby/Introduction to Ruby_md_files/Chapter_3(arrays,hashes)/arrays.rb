# Arrays:

# Arrays are ordered, integer-indexed collections of any object.

# Array indexing starts at 0, as in C or Java. A negative index is assumed to be relative to the end of
# the array---that is, an index of -1 indicates the last element of the array, -2 is the next to last 
# element in the array, and so on.



# Creating Arrays:
# ----------------
# A new array can be created by using the literal constructor []. Arrays can contain different types of 
# objects. For example, the array below contains an Integer, a String and a Float.

ary = [1, "two", 3.0] #=> [1, "two", 3.0]

# An array can also be created by explicitly calling ::new with zero, one (the initial size of the Array)
# or two arguments (the initial size and a default object).

ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]


# Accessing Elements:
# -------------------
# Elements in an array can be retrieved using the #[] method. It can take a single integer argument 
# (a numeric index), a pair of arguments (start and length) or a range. Negative indices start counting 
# from the end, with -1 being the last element.

arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]


# Another way to access a particular array element is by using the at method
arr.at(0) #=> 1



# Obtaining information about array:
# ----------------------------------

browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
browsers.length #=> 5
browsers.count #=> 5

# To check whether an array contains any elements at all
browsers.empty? #=> false
# To check whether a particular item is included in the array
browsers.include?('Konqueror') #=> false


# Adding items to array:
# ----------------------
# Items can be added to the end of an array by using either push or <<

arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]

# unshift will add a new item to the beginning of an array.
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]

# With insert you can add a new element to an array at any position.
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

# Using the insert method, you can also insert multiple values at once:
arr.insert(3, 'orange', 'pear', 'grapefruit') #=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]



# Removing items from array:
# --------------------------
# The method pop removes the last element in an array and returns it.

arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
arr #=> [1, 2, 3, 4, 5]


#To retrieve and at the same time remove the first item, use shift:
arr.shift #=> 1
arr #=> [2, 3, 4, 5]

#To delete an element at a particular index:
arr.delete_at(2) #=> 4
arr #=> [2, 3, 5]

#To delete a particular element anywhere in an array, use delete:
arr = [1, 2, 2, 3]
arr.delete(2) #=> 2
arr #=> [1,3]

#A useful method if you need to remove nil values from an array is compact:
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact  #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
arr          #=> ['foo', 0, 'bar', 7, 'baz']

# Another common need is to remove duplicate elements from an array.

# It has the non-destructive uniq, and destructive method uniq!

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]




# Iterating over aarrays:
# -----------------------
arr = [1, 2, 3, 4, 5]
arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
arr                   #=> [1, 2, 3, 4, 5]
arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
arr                   #=> [1, 4, 9, 16, 25]

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

# The map method can be used to create a new array based on the original array, but with the values 
# modified by the supplied block:
arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
arr                   #=> [1, 2, 3, 4, 5]
arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
arr                   #=> [1, 4, 9, 16, 25]


# Selecting items from array:
# ---------------------------
# Elements can be selected from an array according to criteria defined in a block.

# Non-destructive Selection:
arr = [1, 2, 3, 4, 5, 6]
arr.select { |a| a > 3 }     #=> [4, 5, 6]
arr.reject { |a| a < 3 }     #=> [3, 4, 5, 6]

# Destructive Selection:
# select! and reject! are the corresponding destructive methods to select and reject

# Similar to select vs. reject, delete_if and keep_if have the exact opposite result when supplied
# with the same block:
arr.delete_if { |a| a < 4 } #=> [4, 5, 6]
arr                         #=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
arr.keep_if { |a| a < 4 } #=> [1, 2, 3]
arr                       #=> [1, 2, 3]