import UIKit

protocol Weightabe {                      // создаем протокол поддержки веса
    var weight: Double { get set }
}

class Car: Weightabe {
    var weight: Double
    var carfenderWeight: Double
    var carHood: Int
    var aDoorWeight: Double
    
    func totalWeight () -> Double {
        return carfenderWeight + Double(carHood) + aDoorWeight + weight
    }
    
    init(carfenderWeight: Double, carHood: Int, aDoorWeight: Double, weight: Double) {
        self.carfenderWeight = carfenderWeight
        self.carHood = carHood
        self.aDoorWeight = aDoorWeight
        self.weight = weight
    }
}
class TruckCar: Weightabe {
    var  carfenderWeight: Double
    var carHood: Int
    var aDoorWeight: Double
    var weight: Double
    
    func totalWeight () -> Double {
        return carfenderWeight + Double(carHood) + aDoorWeight + weight
    }
    
    init(carfenderWeight: Double, carHood: Int, aDoorWeight: Double, weight: Double) {
        self.carfenderWeight = carfenderWeight
        self.carHood = carHood
        self.aDoorWeight = aDoorWeight
        self.weight = weight
    }
    
}

struct Queue<T: Weightabe> {                   // T - это какой-то пока неизвестный тип
    private var elements: [T] = []
    // массив типа Т
    mutating func push(_ element: T) {      // добавляем элемент Т
        elements.append(element)
    }
    mutating func pop() -> T? {           // извлекаем элемент типа Т
        return elements.removeLast()
    }
    var totalWeght : Double {             // свойство, отражающее общий вес деталей
        var weight = 0.0
        for element in elements {
            weight += element.weight    // мы можем использовать свойство weight
        }
        return weight
    }
    subscript(elements: Int ...) -> Double {  // доступ к стеку по индексу
        var weight = 0.0
        // перебираем все элементы по переданным индексам, пропускаем
        // те индексы, которые лежат за пределами массива
        for index in elements where index < self.elements.count {
            weight += self.elements[index].weight
        }
        return weight
    }
    
    
    
    func filter(_ predicate: (T) -> Bool ) -> [T] {
        var result = [T]()
        for item in elements {
            if predicate(item) {
                result.append(item)
            }
        }
        return result
    }
}

var queueCar = Queue<Car> ()
var queueTruckCar = Queue<TruckCar> ()

queueCar.push(Car(carfenderWeight: 5.3, carHood: 2, aDoorWeight: 5.2, weight: 1000))
queueCar.push(Car(carfenderWeight: 3.2, carHood: 4, aDoorWeight: 4.8, weight: 1100))
queueTruckCar.push(TruckCar(carfenderWeight: 10.1, carHood: 5, aDoorWeight: 7.3, weight: 3000))
queueTruckCar.push(TruckCar(carfenderWeight: 9.2, carHood: 10, aDoorWeight: 7.8, weight: 5000))
print(queueCar)
queueTruckCar[0,2,3]
print(queueTruckCar)
queueCar[1,2]
queueCar.pop ()






