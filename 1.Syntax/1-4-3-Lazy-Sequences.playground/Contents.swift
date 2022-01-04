import UIKit

//lazy sequences are similar to lazy properties in that they delay work until necessary, but they aren’t quite as efficient
func fibonacci(of num: Int) -> Int {
   if num < 2 {
      return num
   } else {
      return fibonacci(of: num - 1) + fibonacci(of: num - 2)
   }
}
let fibonacciSequence = (0...20).map(fibonacci)
print(fibonacciSequence[10])

//That calculates the first 21 numbers of the Fibonacci sequence, and prints out the 11th: 55.

let lazyFibonacciSequence = Array(0...199).lazy.map(fibonacci)
print(lazyFibonacciSequence[19])

//That new code takes a small amount of time to run, because all the other calculations are never run – no time is wasted.

//However, as clever as lazy sequences are, they do have a drawback that lazy properties do not: they have no memoization.
print(lazyFibonacciSequence[19])
print(lazyFibonacciSequence[19])
print(lazyFibonacciSequence[19])
//the code now takes three times as long to run. 
