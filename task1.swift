import Foundation


var symbol: String? = "-"  // Operator: "+", "-", "*", "/"
var firstNum: Int? = 9
var secondNum: Int? = 0

enum MathematicalOperationError: Error {
    case divisionByZero(String)
    case invalidSelection(String)
}

func calculateOperation() {
  if let unwrappedFirstNum = firstNum,
    let unwrappedSecondNum = secondNum,
    let unwrappedsymbol = symbol
  {


    switch unwrappedsymbol {
    case "+":
      let resAdd = addNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum)
      print(resAdd)


    case "-":
      let resSubtract = subtractNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum)
      print(resSubtract)


    case "*":
      let resMultiply = multiplyNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum)
      print(resMultiply)


    case "/":
      if unwrappedSecondNum == 0 {
        print("Не можна ділити на 0")
      } else {
        let resDivide = divideNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum)
        print(resDivide)
      }


    default:
      print("Не вірний оператор")
    }
  } else {
    print("Ви не ввели symbol, firstNum або secondNum")
    return
  }
}


func addNumbers(number1: Int, number2: Int) -> Int {
  let sum = number1 + number2
  return sum
}


func subtractNumbers(number1: Int, number2: Int) -> Int {
  let difference = number1 - number2
  return difference
}


func multiplyNumbers(number1: Int, number2: Int) -> Int {
  let product = number1 * number2
  return product
}


func divideNumbers(number1: Int, number2: Int) -> Double {
  if number2 == 0 {
    return 0
  } else {
    let result = Double(number1) / Double(number2)
    return result
  }
}


calculateOperation()
