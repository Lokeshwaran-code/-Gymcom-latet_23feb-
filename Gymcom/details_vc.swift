//
//  details_vc.swift
//  Gymcom
//
//  Created by LOKESH on 14/02/24.
//

import UIKit

class details_vc: UIViewController {

    @IBOutlet var details_lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        details_lbl.text = selectedValue
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
