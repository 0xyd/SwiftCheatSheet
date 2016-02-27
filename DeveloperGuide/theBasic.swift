/* Swift provides some primary tpyes: 
	Int32 : Integers in 32bits platform
	Int64 : Integers in 64bits platform
	UInt32: Unsigned in 32bits platform
	UInt64: Unsigned in 64bits platform
	Double: 64-bit floating numbers 
	Float :	32-bit floating numbers 
	Bool  : Bool for boolean values
	String: Textual data
	Tuple : A Compound value with multiple values
   Three collective types:
	Array:
	Set: 
	Dictionary: 
*/

/* Variables and Constants */
// Variables accept changes. 
var myVariable = 100
myVariable = 101

// Declare multiple variables at once.
var x = 1, y = 2, z = 3

// Constants can not change once it is set.
let myConstant = 200

// Declare the multiple constants at once.
let a = -1, b = -2, c = -3

// Variable name can be most unicode characters.
let π = 3.14159
let 你好 = "你好世界"

// Names contains white space, mathematical symbols, arrows, private-use (or invalid) Unicode code points are forbbiden.
// let * = 20
// let white space = 1000
// let → = "arrow" 


// line- and box-drawing characters are forbbiden either.

// The variable name can not start with a number but it is acceptable if numbers living in other place.
// let 1failed = false // Error message: error: expected a digit after integer literal prefix
let _2success     = true
let _willsuccess3 = true

/* Type Annotation */
// When we declare an empty variable or constant, 
// defining a type is the first thing.
var aString: String
// var anErrorString // Error message: error: type annotation missing in pattern

let aConstant: Int 
// let anErrorConstant // Error message: error: type annotation missing in pattern

// 1. Integer
// When we are ...
// 32-bits platform: Int = Int32 (-2,147,483,648 ~ 2,147,483,647) 
// 64-bits platform: Int = Int64 (−9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)
var withInteger: Int 
var withInteger32: Int32
var withInteger64: Int64

// When we are ...
// 32-bits platform: UInt = UInt32 ( 0 ~ 4,294,967,295) 
// 64-bits platform: UInt = UInt64 ( 0 ~ 18,446,744,073,709,551,61)
var withUnsignedInteger: UInt 
var withUnsignedInteger32: UInt32
var withUnsignedInteger64: UInt64

// Display the range for different integer.
let minInteger32 = Int32.min
let maxInteger32 = Int32.max
print("The integer range for 32-bits platform is \(minInteger32) to \(maxInteger32)")

let minInteger64 = Int64.min
let maxInteger64 = Int64.max
print("The integer range for 64-bits platform is \(minInteger64) to \(maxInteger64)")

let minUnsignedInteger32 = UInt32.min
let maxUnsignedInteger32 = UInt32.max
print("The unsigned integer range for 32-bits platform is \(minUnsignedInteger32) to \(maxUnsignedInteger32)")

let minUnsignedInteger64 = UInt64.min
let maxUnsignedInteger64 = UInt64.max
print("The unsigned integer range for 64-bits platform is \(minUnsignedInteger64) to \(maxUnsignedInteger64)")

// 2. Floating-point type
var withFloat: Float   // represents 6 decimal digits
var withDouble: Double // represents 15 decimal digits

// 3. String
var withString: String
// 4. Boolean
var withBoolean: Bool

// 5. Tuple
// Tuple is a compund type with different types in it.
let http200 = (200, "OK")
let http201 = (201, "Created")
let http202 = (202, "Accpeted")
let http204 = (204, "No Content")

// Decomposing a tuple
let (statusCode200, statusMsg200) = http200
let (statusCode201, statusMsg201) = http201
let (statusCode202, statusMsg202) = http202
let (statusCode204, statusMsg204) = http204
print("Status \(statusCode200) means \(statusMsg200)")
print("Status \(statusCode201) means \(statusMsg201)")
print("Status \(statusCode202) means \(statusMsg202)")
print("Status \(statusCode204) means \(statusMsg204)")

// Ignore the value we don't need with underscore when decomposing tuple
let (status201CodeOnly, _) = http200
let (status202CodeOnly, _) = http201
let (status203CodeOnly, _) = http202
let (status204CodeOnly, _) = http204
print("Status code \(status201CodeOnly) means \(statusMsg200)")
print("Status code \(status202CodeOnly) means \(statusMsg201)")
print("Status code \(status203CodeOnly) means \(statusMsg202)")
print("Status code \(status204CodeOnly) means \(statusMsg204)")


/* Type Inference */
// Although Swift is a strong type language, 
// type inference reduces the type declaration operation 
// by defining the type for assigned value while compiling.
var isInt: Bool, isDouble: Bool
let initValueInt = 1 // Default type is Int
isInt = initValueInt is Int 
print("Is \(initValueInt) a Int type? \(isInt)")

let initValueDouble = 1.0 // Evevy floating number's default type is double
isDouble = initValueDouble is Double 
print("Is \(initValueDouble) a Double type? \(isDouble)")

let sumAIntADouble = 1 + 1.0 // The double will be inffered from the context when combining the integer and double 
isDouble = sumAIntADouble is Double
print("Is \(sumAIntADouble) a Double type? \(isDouble)")


/* Numeric Literal */
// Integer Number
let anExampleDeci   = 17
let anExampleBinary = 0b10001 // 17 in binary notation. Prefix: 0b
let anExampleOctal  = 0o21    // 17 in octal notation. Prefix: 0o
let anExampleHex    = 0x11    // 17 in hexadecimal notation. Prefix: 0x 

// Floating Number
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/* Type Conversion */
// We have to use type conversion if we want to combine variables with different types.
let numberToConvert = 2_000 // Integer type
let numberConvertToInt32 = Int32(numberToConvert)
let numberConvertToInt64 = Int64(numberToConvert)
let numberConvertToDouble = Double(numberToConvert)
let numberConvertToFloat  = Float(numberToConvert)
let numberConvertToUnsigned32 = UInt32(numberToConvert)
let numberConvertToUnsigned64 = UInt64(numberToConvert)
print("Number waits for being converted: \(numberToConvert)")
print("Type: \(numberConvertToInt32.dynamicType), Result: \(numberConvertToInt32)")
print("Type: \(numberConvertToInt64.dynamicType), Result: \(numberConvertToInt64)")
print("Type: \(numberConvertToDouble.dynamicType), Result: \(numberConvertToDouble)")
print("Type: \(numberConvertToFloat.dynamicType), Result: \(numberConvertToFloat)")
print("Type: \(numberConvertToUnsigned32.dynamicType), Result: \(numberConvertToUnsigned32)")
print("Type: \(numberConvertToUnsigned64.dynamicType), Result: \(numberConvertToUnsigned64)")

// Add the Int32 and Int64 variables
print("The combined value of numberConvertToInt32 and numberConvertToDouble is: \(numberConvertToInt32 + Int32(numberConvertToDouble))")

/* Type Alias */
// Set up an alias for the names of types
typealias DoubleAlias = Double
let aNumberWithAlias: DoubleAlias = -0.01
print("Type: \(aNumberWithAlias.dynamicType)")

// Printing: print(_separator:terminator:)
// separator and terminator have default values so we can omit it if we don't use them.
print("I don't change the default setting of the separator and the terminator here.")

// Working principle for separator:
// The comma used to divide the string will be replaced by the separator we assigned. 
print("abc", "def") // The default separator setting is space
print("abc", "def", separator: ",")
print("abc", "def", separator: ":")
print("abc", "def", separator: "//")


// Working principle for terminator
print("abc", "def") 				  // The default terminator is next line \n
print("abc", "def", terminator: "\n") // The result is the same as above.
print("abc", "def", terminator: "\t")
print("abc", "def", terminator: ".")
print("abc", "def", terminator: "//")

// Swift use interpolation to include variables and constants.
var printVariable = "a variable"
let printConstant = "a constant"
print("Let's print out \(printVariable) and \(printConstant)")

// Semicolons does not represent the end of a line of code, 
// it isn't a matter whether we use it or not.
var test;
test = 1;

var anotherTest
anotherTest = 0

// However, if we compress mulitple separate statements into one, 
// we have to use Semicolons to separate them.
test = 100; another = -100