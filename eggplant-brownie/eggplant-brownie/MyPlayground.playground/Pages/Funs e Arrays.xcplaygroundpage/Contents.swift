import UIKit

let totalCalorias = [50.5, 100]

func todasCalorias(totalCalorias: [Double]) -> Double {
    var total: Double = 0
    
    for caloria in totalCalorias {
        total += caloria
    }
        return total
    
}
let total = todasCalorias(totalCalorias: [50.5, 100,400])
print(total)
