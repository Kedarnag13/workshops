1. *Here we will make use of ARGV, Argument variable a standard name in programming.*
2. *This variable holds the arguments we pass to ruby script when we run it.*
```
	first, second, third = ARGV
	puts "Your first variable is: #{first}"
	puts "Your second variable is: #{second}"
	puts "Your third variable is: #{third}"
```
3. *Now, when we run the ruby script*
	* ruby filename.rb argument1 argument2 argument3
#### Output
```
	Your first variable is argument1
	Your second variable is argument2
	Your third variable is argument3
```
4. *Difference between gets.chomp and argv*
	* *When user wants to give input using command line then we can make use of ARGV*
	* *When the user wants to give input using keyboard while the script is running then we can make use of gets.chomp*
#### Example
```
	user_name = ARGV.first
	prompt = '> '

	puts "Hi #{user_name}."
	puts "I'd like to ask you a few questions."
	puts "Do you like me #{user_name}? ", prompt
	likes = $stdin.gets.chomp

	puts "Where do you live #{user_name}? ", prompt
	lives = $stdin.gets.chomp

	puts "What kind of computer do you have? ", prompt
	computer = $stdin.gets.chomp

	puts """
	Alright, so you said #{likes} about liking me.
	You live in #{lives}.  Not sure where that is.
	And you have a #{computer} computer.  Nice.
	"""
```
#### Output
```
		Hi .
	I'd like to ask you a few questions.
	Do you like me ? 
	> 
	yes
	Where do you live ? 
	> 
	Mysore
	What kind of computer do you have? 
	> 
	Macintosh

	Alright, so you said yes about liking me.
	You live in Mysore.  Not sure where that is.
	And you have a Macintosh computer.  Nice.
```
