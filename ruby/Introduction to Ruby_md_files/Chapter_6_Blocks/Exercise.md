### Exercise 1
```
	days = ["monday","tuesday","wednesday","thursday","friday"]
	days.select do |day|
		day.match /^t/
	end
```
#### Output
```
	["tuesday", "thursday"]
```
### Exercise 2
```
	def example
		yield 10
		puts "You are in method example"
		yield 100
	end
	example { |i| puts "You are in block #{i}"}
```
#### Output
```
	You are in block 10
	You are in method example
	You are in block 100
```
### Exercise 3
```
	def thrice_do()
		3.times { yield } if block_given? # if a block is given it can be called with "yield".
	end
	thrice_do { puts "Tattoo" }
```
#### Output
```
	Tattoo
	Tattoo
	Tattoo
```
### Exercise 4
```
	def say_hi(name)
		puts "Hi, #{name}!"
		if block_given?
			yield(name)
		end
	end
	say_hi("Tattoo") do |string|
		puts "Name is of length #{string.length} characters"
	end
```
#### Output
```
	Hi, Tattoo!
	Name is of length 6 characters
```