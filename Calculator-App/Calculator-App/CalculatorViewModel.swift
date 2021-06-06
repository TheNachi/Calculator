//
//  CalculatorViewModel.swift
//  Calculator-App
//
//  Created by Munachimso Ugorji on 06/06/2021.
//

import Foundation
import Extensions

class CalculatorViewModel {
    static let title = "Calculator"
    
    private var working = String.empty
    
    func getWorking() -> String {
        return working
    }
    
    func clearWorking() {
        working = String.empty
    }
    
    func addToWorking(value: String) {
        working = working + value
    }
    
    func removeLastFromWorking() {
        working.removeLast()
    }
    
    func validInput() -> Bool {
        var count = 0
        var funcCharIndexes = [Int]()
        var previous: Int = -1
        
        for char in working {
            if specialCharacter(char: char) {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        
        for index in funcCharIndexes {
            if index == 0 || index == working.count - 1 {
                return false
            }
            
            if (previous != -1) {
                if index - previous == 1 {
                    return false
                }
            }
            previous = index
        }
        
        return true
    }
    
    func performCalculation() -> String {
        let expression = NSExpression(format: working)
        let result = expression.toFloatingPoint().expressionValue(with: nil, context: nil) as! Double
        return formatResult(result: result)
    }
    
    func specialCharacter(char: Character) -> Bool {
        let arrayOfCharaters = ["/", "*", "+", "-"]
        if arrayOfCharaters.contains(String(char)) {
            return true
        }
        return false
    }
    
    func formatResult(result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.10f", result)
        }
    }
}
