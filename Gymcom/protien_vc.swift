//
//  protien_vc.swift
//  Gymcom
//
//  Created by LOKESH on 11/02/24.
//

import UIKit

class protien_vc: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    
    let data = ["No Exercise", "Low level training", "Active level training", "Sports", "Weight training"]
    let initialValue: Double = 0.0
    var selected : String?
    
    
    @IBOutlet var male_btn: UIButton!
    @IBOutlet var female_btn: UIButton!
    
    @IBOutlet var protein_weight: UITextField!
    @IBOutlet var show_ans: UILabel!
    
    
    @IBOutlet var pic: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // keybard disappear function
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
        //picker
        selected = data[0]
        //show_ans.text = String(initialValue)
    }
    
    // keybard disapper function object
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
    
    
    @IBAction func male_btn(_ sender: UIButton)
    {
        if male_btn.isSelected
        {
            print("male")
            
        }
        sender.isSelected.toggle()
        
    }
    
    @IBAction func female_btn(_ sender: UIButton)
    {
        if female_btn.isSelected
        {
            print("female")
        }
        sender.isSelected.toggle()
        
    }
    
    @IBAction func calculate(_ sender: Any)
    {
      
        let selectedRow = pic.selectedRow(inComponent: 0)
            if male_btn.isSelected
            {
                        if selectedRow == 0 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 0.75) grams"
                        } else if selectedRow == 1 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 0.89) grams"
                        } else if selectedRow == 2 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 1.2) grams"
                        } else if selectedRow == 3 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 1.5) grams"
                        } else if selectedRow == 4 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 1.7) grams"
                        }
            } 
            else if female_btn.isSelected
            {
                        if selectedRow == 0 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 0.74) grams"
                        } else if selectedRow == 1 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 0.86) grams"
                        } else if selectedRow == 2 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 1.2) grams"
                        } else if selectedRow == 3 {
                            show_ans.text = "Reqired protien is \(Double(protein_weight.text ?? "0")! * 1.33) grams"
                        } else if selectedRow == 4 {
                            show_ans.text = "Reqired protien is\(Double(protein_weight.text ?? "0")! * 1.4) grams"
                        }
                    }
        
        protein_weight.resignFirstResponder()

                }
    
    // picker functions
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         selected = data[row]
        
    }
}
