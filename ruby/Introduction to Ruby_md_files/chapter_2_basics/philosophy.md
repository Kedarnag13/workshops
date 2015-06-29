## Fun Part
### Exercise 1
```
	(a, b), c = [[:a, :b], :c]
	[a,b,c]
	=> [:a, :b, :c]

	(a,), = [[:a]]
	a
	=> :a
```
### Exerice 2
##### Initialize array with the same value:
```
	[2]*5
	=>[2,2,2,2,2]
	Array.new 5, 2
	=>[2,2,2,2,2]
```
### Exerice 3
```
	[1,2,3].reduce(0, &:+)
	=> 6
```
## Expressive Part
### Exercise 1
```
	5.even?                     # => false 
	1.upto(4).to_a              # => [1, 2, 3, 4]
	"A string literal".length   # => 16
```
### Exercise 2
##### We can list their methods
```
	42.methods
	=> [:to_s,
	 :inspect,
	 :-@,
	 :+,
	 :-,
	 :*,
	 :/,
	 :div,
	 :%]
```
### Exercise 3
##### We can also check their class
```
	1.class     # => Fixnum
	1.3.class   # => Float
	true.class  # => TrueClass
```
### Exericse 4
##### To understand everything is an Object
```
	Fixnum.is_a?(Object)  # => true
	Fixnum.class          # => Class
	Class.ancestors   # => [Class, Module, Object, Kernel, BasicObject] 
```
