//
//  ViewController.swift
//  Calculator-App
//
//  Created by Munachimso Ugorji on 04/06/2021.
//

import UIKit
import NetworkService_Models
import Extensions

class CalculatorViewController: UIViewController {
    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorResult: UILabel!
    
    private var viewModel = CalculatorViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = CalculatorViewModel.title
        clearAll()
    }
    
    func clearAll() {
        viewModel.clearWorking()
        calculatorResult.text = String.empty
        calculatorWorkings.text = String.empty
    }
    
    func addToWorkings(value: String) {
        viewModel.addToWorking(value: value)
        calculatorWorkings.text = viewModel.getWorking()
    }
    
    @IBAction func AllClearTapped(_ sender: UIButton) {
        clearAll()
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        if !viewModel.getWorking().isEmpty {
            viewModel.removeLastFromWorking()
            calculatorWorkings.text = viewModel.getWorking()
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if viewModel.checkForOtherCharacter(value: numValue) {
                
            } else {
                addToWorkings(value: numValue)
            }
        }
    }
    
    @IBAction func equalToTapped(_ sender: UIButton) {
        if viewModel.validInput() {
            calculatorResult.text = viewModel.performCalculation()
        } else {
            let alert = UIAlertController(title: "Error", message: "Unable to perform math on input, ensure your input is mathematically correct", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}
