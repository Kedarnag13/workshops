## Datatypes
1. *A particular kind of data item, as defined by the values it can take, the programming language used, or the operations that can be performed on it.*
2. *Ruby has several data types. All data types are based on classes. The following are the data types recognized in Ruby:*
	* Booleans
	* Symbols
	* Numbers
	* Strings
	* Arrays
	* Hashes 

### Boolean
1. *Boolean data type is a data type, having two values (usually denoted true and false), intended to represent the truth values of logic and Boolean algebra.*
	 * true.is_a?(Boolean) => true
	 * false.is_a?(Boolean) => true
	 * "String".boolean? => false
	 * 1.boolean? => false
	 * Time.now.boolean? => false
	 * nil.boolean? => false
	 * true.boolean? => true 
	 * false.boolean? => true
	 * (1==1).boolean? => true
	 * (1==2).boolean? => true

### Symbols
1. *Symbols are strings, just an difference, Symbols are immutable. Mutable objects can be changed after assignment while immutable objects can only be overwritten.* 
2. *Every Symbol with the same value refers to the same object*
``` 
	[ :foo, :foo, :foo, :bar, :bar, :bar ].each do |v|
  		puts v.inspect + ' ' + v.object_id.to_s
	end 
```
#### Output
```
	:foo 533768
	:foo 533768
	:foo 533768
	:bar 533928
	:bar 533928
	:bar 533928
```
----
### Strings
1. *A String object holds and manipulates an arbitrary sequence of bytes, typically representing characters. String objects may be created using String::new or as literals.*
2. *Each String object is distinct even if the values are identical*
```
	[ "foo", "foo", "foo", "bar", "bar", "bar" ].each do |v|
  		puts v.inspect + ' ' + v.object_id.to_s
	end
```
#### Output
```
"foo" 70169800633140
"foo" 70169800633120
"foo" 70169800633100
"bar" 70169800633080
"bar" 70169800633060
"bar" 70169800633040
```
----
### Arrays
1. *Ruby arrays are ordered, integer-indexed collections of any object.*
2. *Each element in an array is associated with and referred to by an index.*
3. *Array indexing starts at 0, as is any other Programming Language such as C or Java.*
4. *A negative index is assumed relative to the end of the array.*
5. *An index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.*
6. *Ruby arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects.*
7. *Ruby arrays grow automatically while adding elements to them.*
8. **Syntax Create Arrays**
```
	* arr = Array.new
	* arr = Array.new(10)
	* p arr.size => 10
	* p arr.length => 10
	* numbers = Array(0..9) => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```
9. *Some of the built-in methods of Arrays*
	* *Compact* 
```
		* Method used to remove nil value from array.
		* arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
		* arr.compact => ['foo', 0, 'bar', 7, 'baz']
		* arr.compact! => ['foo', 0, 'bar', 7, 'baz']
```
	* *Unique*
```
		* To remove duplicate values from array.
		* arr = [1,2,4,5,1,4,1,3,7,8,9,1]
		* arr.uniq => [1, 2, 4, 5, 3, 7, 8, 9]
```

