
/**
 What is the bill? 200
 What is the tip percentage? 15
 ---
 The tip is $30.00
 The total is $230.00
 **/
/**
 Inputs:
 bill amount: 10
 tip rate: 15
 Expected Result:
 tip: $1.50
 total: $11.50
 **/
/**
 Inputs:
 bill amount: 11.25
 tip rate: 15
 Expected Result:
 tip: $1.69
 total: $12.94
 **/
import Foundation

func calculateTip(billAmount: Double, tipRate: Int) -> (tip: Double, total: Double) {
    let tip = r(number: (billAmount * (Double(tipRate) / 100)), index: 2)
    let total = billAmount + tip
    
    return (tip: tip, total: total)
}

func r(number: Double, index: Int) -> Double {
    let powered = pow(Double(10), Double(index))
    return round(number * powered) / powered
}


var billAmount: Double = 10
var tipRate = 15

let tipAndTotal = calculateTip(billAmount: billAmount, tipRate: tipRate)

print("Tip: \(tipAndTotal.tip), Total: \(tipAndTotal.total)")
