# Hash

# A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

# Hashes enumerate their values in the order that the corresponding keys were inserted.

# A Hash can be easily created by using its implicit form:

grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

# Hashes allow an alternate syntax form when your keys are always symbols. Instead of
options = { :font_size => 10, :font_family => "Arial" }

# You could write it as:
options = { font_size: 10, font_family: "Arial" }

# Each named key is a symbol you can access in hash:
options[:font_size]  # => 10

#A Hash can also be created through its ::new method:
grades = Hash.new
grades["Dorothy Doe"] = 9

# Hashes have a default value that is returned when accessing keys that do not exist in the hash. 
# If no default is set nil is used. You can set the default value by sending it as an argument to ::new:
grades = Hash.new(0)
# Or by using the default= method:
grades = {"Timmy Doe" => 8}
grades.default = 0

# Accessing a value in a Hash requires using its key:
puts grades["Jane Doe"] # => 0


# Few methods examples which can be used on hash:

# empty?:
# -------
# Returns true if hsh contains no key-value pairs.

{}.empty?   #=> true

# Flatten:
# --------
# Returns a new array that is a one-dimensional flattening of this hash. That is, for every key or value 
# that is an array, extract its elements into the new array.

a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
a.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]
a.flatten(2) # => [1, "one", 2, 2, "two", 3, "three"]


# has_key?
# --------
# Returns true if the given key is present in hash.
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

# has_value?
# ----------
# Returns true if the given value is present in hash.
h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false

# invert
# ------
# Returns a new hash created by using hsh’s values as keys, and the keys as values.
h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}

# merge
# -----
# Returns a new hash containing the contents of other_hash and the contents of hsh. If no block is 
# specified, the value for entries with duplicate keys will be that of other_hash. Otherwise the value 
# for each duplicate key is determined by calling the block with the key, its value in hsh and its value
# in other_hash.
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}





