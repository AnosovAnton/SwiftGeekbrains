import UIKit

func isEvenNumber(number: Int){
    if number % 2 == 0 {
        print("Число четное")
    } else {
        print("Число не четное")
    }
}
    isEvenNumber(number: 10)
    isEvenNumber(number: 11)


func remainderOfDivision(number: Int){
    if number % 3 == 0 {
        print("Делиться")
    } else {
        print("Не делиться")
    }
}

remainderOfDivision(number: 30)
remainderOfDivision(number: 10)


var array = [Int]()
array += 1...100
print(array)
for (_ , value) in array.enumerated() {
    if value % 2 == 0 || value % 3 != 0 {
        array.remove(at: array.firstIndex(of: value)!)
        print(array)
    }
}

    

