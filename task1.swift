import Foundation


var symbol: String? = "-"  // Operator: "+", "-", "*", "/"
var firstNum: Int? = 9
var secondNum: Int? = 0

enum MathematicalOperationError: Error {
    case divisionByZero(String)
    case invalidSelection(String)
}

func calculateOperation() throws {
  guard let unwrappedFirstNum = firstNum,
    let unwrappedSecondNum = secondNum,
    let unwrappedsymbol = symbol
  else {
      throw MathematicalOperationError.invalidSelection("ВВЕДІТЬ ОПЕРАТОР, ПЕРШЕ АБО ДРУГЕ ЧИСЛО")
  }
  switch unwrappedsymbol {
  case "+":
    print(addNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum))
  case "-":
    print(subtractNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum))
  case "*":
    print(multiplyNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum))
  case "/":
       do {
           let resDivide = try divideNumbers(number1: unwrappedFirstNum, number2: unwrappedSecondNum)
           print(resDivide)
          }catch let error as MathematicalOperationError {
            print( error)
          } catch {
           print("Помилка")
          }
  default:
    print("Не вірний оператор")
  }
}


func addNumbers(number1: Int, number2: Int) -> Int {
  return number1 + number2
}
func subtractNumbers(number1: Int, number2: Int) -> Int {
  return number1 - number2
}
func multiplyNumbers(number1: Int, number2: Int) -> Int {
  return number1 * number2
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
