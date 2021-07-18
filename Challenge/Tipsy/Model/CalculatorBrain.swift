//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Gabriel Silva on 18/07/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bill: BillSplitting?
    var tip = 0.10
    var numberOfPeople = 2
    var total = "0.0"
    
    mutating func convertingTipToPercentage(buttonSelected: String) {
        let buttonTitleMinusPercentSign = buttonSelected.dropLast()
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentSign)!
        tip = buttonTitleAsNumber / 100
    }
    
    mutating func convertNumberOfPeopleToInt(stepperNumber: String) {
        numberOfPeople = Int(stepperNumber)!
    }
    
    mutating func countingBill(_ billTotal: String) {
        let billAsNumber = convertingBillToDouble(billTotal)
        let count = (billAsNumber + billAsNumber * Double(tip)) / Double(numberOfPeople)
        total = String(format: "%.2f", count)
        bill = BillSplitting(result: total, tip: tip, numberOfPeople: numberOfPeople)
    }
    
    func convertingBillToDouble(_ bill: String) -> Double {
        var billWithNoComon = ""
        for var letter in bill {
            if letter == "," {
                letter = "."
            }
            billWithNoComon += String(letter)
        }
        return Double(billWithNoComon)!
    }
    
    func getNumberOfPeople() -> Int {
        return bill?.numberOfPeople ?? 0
    }
    
    func getTip() -> Double {
        return bill?.tip ?? 0.0
    }
    
    func getResult() -> String {
        return bill?.result ?? "0.0"
    }
}
