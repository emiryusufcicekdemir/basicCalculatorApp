//
//  ViewController.swift
//  calculator
//  Created by Emir Cicekdemir 
//
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func formatResult(_ result: Double ) -> String {
        return result.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", result) : "\(result)"
        }

    @IBAction func plusButton(_ sender: Any) {
        if let num1 = Double(firstText.text ?? ""), let num2 = Double(secondText.text ?? "") {
                resultLabel.text = "\(num1 + num2)"
            } else {
                resultLabel.text = "Geçersiz giriş!"
            }
        
    }
    
    @IBAction func minusButtton(_ sender: Any) {
        if let num1 = Double(firstText.text ?? ""), let num2 = Double(secondText.text ?? "") {
                resultLabel.text = "\(num1 - num2)"
            } else {
                resultLabel.text = "Geçersiz giriş!"
            }
        
    }
    
    @IBAction func multiplationButton(_ sender: Any) {
        if let num1 = Double(firstText.text ?? ""), let num2 = Double(secondText.text ?? "") {
                resultLabel.text = "\(num1 * num2)"
            } else {
                resultLabel.text = "Geçersiz giriş!"
            }
    }
    
    @IBAction func divideButton(_ sender: Any) {
        if let num1 = Double(firstText.text ?? ""), let num2 = Double(secondText.text ?? "") {
                if num2 == 0 {
                    resultLabel.text = "Sıfıra bölünemez!"
                } else {
                    resultLabel.text = "\(num1 / num2)"
                }
            } else {
                resultLabel.text = "Geçersiz giriş!"
            }
    }
    @IBAction func clearButton(_ sender: Any) {
        
        firstText.text = ""
        secondText.text = ""
        resultLabel.text = "Giriş Yapınız!"
    }
}
