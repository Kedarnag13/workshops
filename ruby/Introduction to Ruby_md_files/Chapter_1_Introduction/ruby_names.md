1. **Ruby Names**
	* *They are used to refer constants, variables, methods, classes and modules.*
	* *The first character of a name helps Ruby to distinguish its intended use.*
	* *Certain names are reserved and should not be used as variable, method, class, or module names.*
		* **Variables**
			* *It can contain data of any type.*
			* *We can use variables without declaration*
			* *Name of the variable itself denotes the scope of it.(local, instance, class, global)*
				* Local variable (declared within an object) name consists of a lowercase letter (or an underscore) followed by name characters (anything, _anything, anything_and_everything).
				* Instance variable (declared within an object always "belongs to" whatever object self refers to) name starts with an ''at'' sign (''@'') followed by a name (@user, @_, @Session).
				* Class variable (declared within a class) name starts with two ''at'' signs (''@@'') followed by a name (@@user, @@_, @@Session). A class variable is shared among all objects of a class. 
				* Global variables start with a dollar sign (''$'') followed by name characters. A global variable name can be formed using ''$-'' followed by any single character ($user, $SESSION, $-a).