import Foundation
class Manager {
    static let shared = Manager()
    var arrayOfBeers = [Beer(name: "Spaten", price: 1.49, remaining: 100), Beer(name: "Carlsberg", price: 3.99, remaining: 100), Beer(name: "Heineken", price: 5.49, remaining: 100)]
    
    var arrayOfCount = [0, 0, 0]
    var total = 0
    private init() {}
    
    func minus(count: String) -> String {
        let intCount = Int(count)
        if intCount! > 0 {
            return String(intCount! - 1)
        } else {
            return String(intCount!)
        }
    }
    
    func plus(count: String) -> String {
        let intCount = Int(count)
        if intCount! < 3 {
            return String(intCount! + 1)
        }
        else {
            return String(intCount!)
        }
    }
    
    func sell(beer: [Beer], count: [String]) -> String {
        let a = Double(count[0])! * beer[0].price
        let b = Double(count[1])! * beer[1].price
        let c = Double(count[2])! * beer[2].price
        
        beer[0].remaining -= Int(count[0])!
        beer[1].remaining -= Int(count[1])!
        beer[2].remaining -= Int(count[2])!
        
        
        return "\(Double(count[0])!) * \(beer[0].price) - \(beer[0].name), \(Double(count[1])!) * \(beer[1].price) - \(beer[1].name), \(Double(count[2])!) * \(beer[2].price) - \(beer[2].name). Total sum - \(String((round(a + b + c) * 1000) / 1000))"
        
    }
    
    func startDay() {
        arrayOfBeers[0].remaining = 100
        arrayOfBeers[1].remaining = 100
        arrayOfBeers[2].remaining = 100
    }
    
    func endDay() -> String {
        let sum = round((Double(100 - arrayOfBeers[0].remaining) * arrayOfBeers[0].price +
        Double(100 - arrayOfBeers[1].remaining) * arrayOfBeers[1].price +
        Double(100 - arrayOfBeers[2].remaining) * arrayOfBeers[2].price) * 1000 / 1000)
        
        arrayOfBeers[0].remaining = 100
        arrayOfBeers[1].remaining = 100
        arrayOfBeers[2].remaining = 100
        
        return "Total sum - \(sum)"
        
    }
    
    
    
    
}
