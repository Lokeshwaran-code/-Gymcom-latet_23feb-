//
//  utilities_vc.swift
//  Gymcom
//
//  Created by LOKESH on 09/02/24.
//

import UIKit

class utilities_vc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bmi_btn(_ sender: Any)
    {
        let vc1 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "bmi_vc") as? bmi_vc
        self.navigationController?.pushViewController(vc1!, animated: true)
    }
    
    
    @IBAction func fat_btn(_ sender: Any)
    {
        let vc2 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "fat_vc") as? fat_vc
        self.navigationController?.pushViewController(vc2!, animated: true)
    }
    
    
    @IBAction func protien_btn(_ sender: Any)
    {
        let vc3 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "protien_vc") as? protien_vc
        self.navigationController?.pushViewController(vc3!, animated: true)
    }
    
    
}
