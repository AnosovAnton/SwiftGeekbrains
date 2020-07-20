import UIKit

enum PossibleErrors: Error {
    case notInStock
    case notEnoughtMoney
}

struct  Clothes {
    let price: Int
    var count: Int
}

class Store {
    var deposit = 11
    var storeClothes = ["clothes": Clothes(price: 10, count: 1), "Boots": Clothes(price: 15, count: 0), "Hats": Clothes(price: 20, count: 2)]

    func getTheClothes(withName: String) throws {
        guard var clothes = storeClothes[withName] else {
            throw PossibleErrors.notInStock
        }

        guard clothes.count > 0 else {
            throw PossibleErrors.notInStock
        }

        guard clothes.price <= deposit else {
            throw PossibleErrors.notEnoughtMoney
        }

        deposit -= clothes.price
        clothes.count -= 1
        storeClothes[withName] = clothes

        print("You bought clothes: \(withName)")

    }
}

let store = Store()
try? store.getTheClothes(withName: "clothes")
store.deposit
store.storeClothes

do {
    try store.getTheClothes(withName: "clothes")
} catch PossibleErrors.notInStock {
    print("Out of clothes")
} catch PossibleErrors.notEnoughtMoney {
    print("Not enough money")
}


