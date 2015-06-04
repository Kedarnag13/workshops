# Iterators are nothing but methods supported by collections. Objects that store a group of data members 
# are called collections. In Ruby, arrays and hashes can be termed collections.

# Iterators return all the elements of a collection, one after the other. We will be discussing two 
# iterators here, each and collect.


# Ruby each iterator
# ------------------
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



# Ruby Collect iterator
# ---------------------
# The collect iterator returns all the elements of a collection.

a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b

# Result:
#        1
#        2
#        3
#        4
#        5




