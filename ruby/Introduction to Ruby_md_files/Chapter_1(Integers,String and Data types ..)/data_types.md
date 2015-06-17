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
========
```
	:foo 533768
	:foo 533768
	:foo 533768
	:bar 533928
	:bar 533928
	:bar 533928
```
========
### Strings
1. *A String object holds and manipulates an arbitrary sequence of bytes, typically representing characters. String objects may be created using String::new or as literals.*
2. *Each String object is distinct even if the values are identical*
```
	[ "foo", "foo", "foo", "bar", "bar", "bar" ].each do |v|
  		puts v.inspect + ' ' + v.object_id.to_s
	end
```
