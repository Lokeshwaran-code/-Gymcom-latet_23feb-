//
//  bmi_vc.swift
//  Gymcom
//
//  Created by LOKESH on 11/02/24.
//

import UIKit

class bmi_vc: UIViewController {

    @IBOutlet var height: UITextField!
    @IBOutlet var weight: UITextField!
    
    @IBOutlet var bmi_score: UILabel!
    @IBOutlet var bmi_statement: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // keybard disappear function
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
               view.addGestureRecognizer(tapGesture)
    }
    
    // keybard disapper function object
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }

    @IBAction func calculate(_ sender: Any) 
    {
        add()
        // keyboard disapper
        weight.resignFirstResponder()
        height.resignFirstResponder()
    }
    
    func add()
    {
        let ht = height.text
        let wt = weight.text
        
      
        let temp : Double = 0.01
        let buff = Double(ht!)! * temp
        let msquare = buff * buff
        //print(msquare)
        let form = Double(wt!)! / msquare
        // conterting double to get only 2 decimal points
        let float_val = String(format: "%.2f", form)
        print(float_val)
        bmi_score.text! = "BMI Score is \(float_val)"

        if (form < 16)
        {
            print ("Severely underweight")
            bmi_statement.text! = "Severely underweight"
        }
        else if (form >= 16) && (form < 18.5)
        {
            print("Underweight")
            bmi_statement.text! = "Underweight"
        }
        else if (form >= 18.5) && (form < 25)
        {
            print("Normal")
            bmi_statement.text! = "Normal"
        }
        else if (form >= 25) && (form < 30)
        {
            print("over weight")
            bmi_statement.text! = "over weight"
        }
        else if (form > 30)
        {
            print("Obese")
            bmi_statement.text! = "Obese"
        }
    }
    

}
