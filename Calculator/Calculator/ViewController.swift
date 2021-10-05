//
//  ViewController.swift
//  Calculator
//
//  Created by user202327 on 9/24/21.
//  Copyright © 2021 user202327. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

       @IBOutlet weak var calculatorResults: UILabel!
      var flag=false

    @IBOutlet weak var History: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

var calObject = Calculator.init()

    @IBAction func btn1(_ sender: UIButton){
         if( sender.tag == 0){
         
         calculatorResults.text! += "0"
            calObject.push(s: "0")}
         else  if( sender.tag == 1){
        calculatorResults.text! += "1"
            calObject.push(s: "1")}
        else if ( sender.tag == 2){
        
         calculatorResults.text! += "2"
            calObject.push(s: "2")}
       else if( sender.tag == 3){
         calculatorResults.text! += "3"
            calObject.push(s: "3")}
          else if( sender.tag == 4){
         calculatorResults.text! += "4"
            calObject.push(s: "4")}
         else if( sender.tag == 5){
            
         calculatorResults.text! += "5"
            calObject.push(s: "5")}
         else if( sender.tag == 6){
         calculatorResults.text! += "6"
            calObject.push(s: "6")}
        
        else if( sender.tag == 7){
         calculatorResults.text! += "7"
            calObject.push(s: "7")}
         else if( sender.tag == 8){
            
         calculatorResults.text! += "8"
            calObject.push(s: "8")
            
         }
           else if( sender.tag == 9){
         calculatorResults.text! += "9"
            calObject.push(s: "9")}
        else if( sender.tag == 10){
         calculatorResults.text! += "+"
            calObject.push(s: "+")}
         else if( sender.tag == 11){
         calculatorResults.text! += "-"
            calObject.push(s: "-")}
         else if( sender.tag == 12){
         calculatorResults.text! += "*"
            calObject.push(s: "*")}
         else if( sender.tag == 13){
         calculatorResults.text! += "/"
            calObject.push(s: "/")}
         else if( sender.tag == 14){
            if calObject.checkValues() {
                var result = calObject.calc()
            calculatorResults.text! += "= \(result)"
            if flag
         {
         History.text += calculatorResults.text! + "\n"
            
            }
         }
         else
         {
         let alert = UIAlertController(title: "Input Alert", message: "Please Enter Valid Input.",
         preferredStyle: UIAlertController.Style.alert) // add an action (button)
         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil))
         // show the alert
         self.present(alert, animated: true, completion: nil)
            }
        }
         else if( sender.tag == 15){
            calObject.clean()
            calculatorResults.text! = ""}
         else if( sender.tag == 16){
         if sender.currentTitle == "Advance - With History" {
            sender.setTitle("Standard - No History", for: .normal); History.isHidden = false
         flag = true
         } else{
            sender.setTitle("Advance - With History", for: .normal); History.isHidden = true
         History.text = ""
         flag = false
         }
        }
    }
    }



