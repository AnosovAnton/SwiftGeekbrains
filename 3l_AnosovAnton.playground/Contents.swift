import UIKit

enum CarAction {
    case engineOn, engineOff, openWindows, closeWindows
    case cargoLoading(weight: Int)
    case cargoUnloading(weight: Int)
}
struct SportCar {
    let model: String
    let year: Int
    let engineWork: Bool
    let openWindows: Bool
    let vVolume: Double
    let fillTheVolume: Double
    let pneumo: Bool
    
        mutating func carAction (action: CarAction) {
            switch action {
            case .engineOn:
                if engineWork == true {
                   print("Двигатель работает")
                }
                else {
                    print("Двигатель не работает")
                }
            case .openWindows:
                if openWindows == true {
                    print("Окна открыты")
                }
                else {
                    print("Окна закрыты")
                }
                
            case .engineOff:
                if engineWork == true {
                    print("Двигатель не работает")
                }
                else {
                    print("Двигатель работает")
                }
            case .closeWindows:
                if openWindows == true {
                    print("Окна закрыты")
                }
                else {
                    print("Окна открыты")
                }
            case .cargoLoading(weight: _):
                if fillTheVolume < vVolume {
                    print("Нельзя загрузить")
                }
                else {
                    print("груз загружен")
                }
            case .cargoUnloading(weight: _):
                if vVolume < fillTheVolume {
                    print("Грузы выгружен")
                }
                else {
                    print("груз не выгружен")
                }
                if pneumo == true {
                    print("Имеет пневмоподвеску")
                }
                else {
                    print("не имеет подвески")
                }
            }
            
        }

        init(model: String, year: Int, engineWork: Bool, openWindows: Bool, vVolume: Double, fillTheVolume: Double, pneumo: Bool) {
        self.model = model
        self.year = year
        self.engineWork = false
        self.openWindows = false
        self.vVolume = 3
        self.fillTheVolume = 10
        self.pneumo = true
    }
    func resultSportCar () {
        print("марка автомобиля \(model), год выпуска \(year), двигатель \(engineWork), окна \(openWindows), объем багажника \(vVolume), загрузка багажника \(fillTheVolume), подвеска \(pneumo)")
    }
    }

    struct TruckCar {
          let model: String
          let year: Int
          let engineWork: Bool
          let openWindows: Bool
          let vVolume: Double
          let fillTheVolume: Double
          let trailer: Bool
        
        mutating func carAction (action: CarAction) {
                switch action {
                case .engineOn:
                    if engineWork == true {
                       print("Двигатель работает")
                    }
                    else {
                        print("Двигатель не работает")
                    }
                case .openWindows:
                    if openWindows == true {
                        print("Окна открыты")
                    }
                    else {
                        print("Окна закрыты")
                    }
                    
                case .engineOff:
                    if engineWork == true {
                        print("Двигатель не работает")
                    }
                    else {
                        print("Двигатель работает")
                    }
                case .closeWindows:
                    if openWindows == true {
                        print("Окна закрыты")
                    }
                    else {
                        print("Окна открыты")
                    }
                case .cargoLoading(weight: _):
                    if fillTheVolume < vVolume {
                        print("Нельзя загрузить")
                    }
                    else {
                        print("груз загружен")
                    }
                case .cargoUnloading(weight: _):
                    if vVolume < fillTheVolume {
                        print("Грузы выгружен")
                    }
                    else {
                        print("груз не выгружен")
                    }
                    if trailer == true {
                        print("Имеет  прицеп")
                    }
                    else {
                        print("не имеет прицепа")
                    }
                }
                
            }

            init(model: String, year: Int, engineWork: Bool, openWindows: Bool, vVolume: Double, fillTheVolume: Double, trailer: Bool) {
            self.model = model
            self.year = year
            self.engineWork = engineWork
            self.openWindows = openWindows
            self.vVolume = 20
            self.fillTheVolume = 10
            self.trailer = trailer
        }
        func resultTruckCar () {
            print("марка автомобиля \(model), год выпуска \(year), двигатель \(engineWork), окна \(openWindows), объем кузова \(vVolume), загрузка кузова \(fillTheVolume), прицеп \(trailer)")
        }
        }
var car1 = SportCar(model: "Volvo", year: 2020, engineWork: true, openWindows: false, vVolume: 3, fillTheVolume: 2.5, pneumo: true)
car1.resultSportCar()
var car2 = TruckCar(model: "Audi", year: 2010, engineWork: false, openWindows: true, vVolume: 80, fillTheVolume: 60, trailer: false)
car2.resultTruckCar()

