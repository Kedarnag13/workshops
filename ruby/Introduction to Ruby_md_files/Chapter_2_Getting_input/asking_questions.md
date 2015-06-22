1. *Most of what software does is the following*
	* *Take some kind of input*
	* *Change it*
	* *Print out something to show how it changed*
```
	print "How old are you?"
	age = gets.chomp
	print "How tall are you?"
	height = gets.chomp
	print "How much do you weigh?"
	weight = gets.chomp

	puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."
```
#### Output
```
	How old are you? 28
	How tall are you? 6'0''
	How much do you weigh? 180lbs
	So, you're 28 years old, 6'0'' tall and 180lbs heavy.
```