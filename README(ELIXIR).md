Concepts of Elixir & Phoenix

{Concepts Covered: Why Elixir- [Immutability, Functional Programming, Easy to test], Pattern matching, Guards, Higher Order functions, Using Cast and Changeset, Modules & Functions, Ecto & Repo, Migrations, } 

Why Elixir

Immutability - in elixir refers to a concept where if I declare the variable x with value as 10 and if I redeclare the x value as 12 again, the earlier value isn't disturbed or overridden. Both the values are stored in memory and the recent value will be accessed whenever the variable is called and the other value is deprecated or forbidden. This behavior is called variable shadowing.

Functional Programming - Elixir follows a function paradigm where pure functions with immutable states are used so that for every iteration or function call the data of the function is not changed and it returns the same output for the same input.

First-class functions: Functions are treated like any other value; they can be passed as arguments or returned from other functions.
Higher-order functions: Functions can take other functions as parameters or return them.

Easy To Test - Elixir provides the Exunit library providing everything necessary to comprehensively test your applications.


There are other highlights for elixir listed below

Scalable: The ability of the system to handle increasing loads by efficiently utilizing more resources (e.g., more CPUs or machines).
Fault Tolerant: The system can continue to operate properly even if some components fail, ensuring minimal downtime.
Extensible: The system can be easily expanded or modified to accommodate new features or growing demands without significant changes.
Concurrency: The ability to handle multiple tasks at the same time, making effective use of multicore processors.
Performant: The system is optimized to run efficiently with low latency and high throughput.
Compatible with Erlang: Elixir can run on the Erlang virtual machine (BEAM), inheriting Erlang’s features and integrating with its libraries and ecosystem.

Basic Data Types 

Integers, Floats, Booleans, Atoms [:anyvalue], Strings, Lists[3.14, “sample”, :lists], Tuples {3.14, :pie, “Apple”} Maps %{“hello” => “world”}.

Basic Operations

Arithmetic - + - * / div() rem()
Boolean - || && ! and or not 
Comparison - > < >= <= == === !=
number < atom < reference < function < port < pid < tuple < map < list < bitstring 
String Interpolation - #{}
String Concatenation - <>








Pattern Matching & Guards 

Pattern Matching - The pattern matching function helps me validate the multiple parameters with their results in a very straightforward approach where I don't have to validate different values by assigning them variables and then checking if this does this or if not do that. I can directly check the value using them with appropriate atom matching and success or failure based on the operation can be handled.

Match operator - directly assigning values to variables following rebinding process to assign some value to the declared variables

Pin operator - If used, it makes sure that the value is not disturbed or modified and does not allow rebinding on the variables.

Guards - These are the additional conditions that can be added to the function wherein we can pass the checks for certain parameters and append the logic for the same.

Enums - The Enum is the module which has many functions that help us to transform, filter and reduce operations on data without need to write the loops for the same. In other words, Enum is helping us to eliminate the loops as a subject and directly perform useful operations on data. 
Example - Enum.map, Enum.filter and Enum.reduce.

 




Modules & Functions in Elixir 

The modules are being used to group the related functions together to perform a particular operation. For ex - The create, update, delete, show, get and list operations for an IG post can be composed in a single module.


