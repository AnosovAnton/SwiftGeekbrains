import UIKit

enum carDoorstate {
    case open, close
}
enum carHarthState {
    case open, close
}
enum tarilerStatus {
    case unhook, toAttach
}
class Car {
    let pneumo: Bool
    var color: String
    var doorstate: carDoorstate

    init (pneumo: Bool, color: String, doorstate: carDoorstate) {
        self.pneumo = true
        self.color = color
        self.doorstate = doorstate
    }
    func opendoor () {
        doorstate = .open
    }
    func closedoor () {
        doorstate = .close
    }
}

class SportCar: Car {
    var harthState: carHarthState
    init(pneumo: Bool, color: String, doorstate: carDoorstate, harthState: carHarthState) {
    self.harthState = harthState

    super.init(pneumo: pneumo, color: color, doorstate: doorstate)
    
}
    override func opendoor()  {
        doorstate = .open
        print("Вас сдуло ветром")
    }
    func  closeHarthState () {
        harthState = .close
        print("Люк закрыт")
    }


    func openHarthState() {
        harthState = .open
        print("Нельзя открывать, Вас сдует ветром")
    }

}

class TrunkCar: Car {
    var trailerState: tarilerStatus
    init(pneumo: Bool, color: String, doorstate: carDoorstate, trailerState: tarilerStatus) {
        self.trailerState = trailerState
        
        super.init(pneumo: pneumo, color: color, doorstate: doorstate)
    
}
    func unhookTrailer() {
        trailerState = .unhook
        print("Трейлер отсоединен")
}
    func toAttachTrailer() {
        trailerState = .toAttach
        print("Тейлер прицеплен")
}
    override func opendoor() {
        doorstate = .open
        print("Двери не открывать")
    }
        }



let car1 = SportCar(pneumo: true, color: "Red", doorstate: .open, harthState: .close)
let car3 = TrunkCar(pneumo: true, color: "Gray", doorstate: .open, trailerState: .toAttach)
let car4 = TrunkCar(pneumo: false, color: "Yeloww", doorstate: .close, trailerState: .unhook)
let car5 = Car(pneumo: true, color: "Green", doorstate: .open)



