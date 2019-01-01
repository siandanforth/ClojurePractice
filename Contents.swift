import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int ) -> Int {
    return operation(n1, n2)
}

//with clojure (trailing)

let result = calculator(n1: 2, n2: 3) {$0 * $1}

print(result)

//or

func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calculator(n1: 2, n2: 3, operation: multiply)

//basic array

let array = [6,2,3,9,4,1]

func addOne (n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne)


//array with clojure

let arrayTwo = [6,2,3,9,4,1]

print(array.map{$0 + 1})

//array stringified

let arrayThree = array.map{"\($0)"}

print(arrayThree)

