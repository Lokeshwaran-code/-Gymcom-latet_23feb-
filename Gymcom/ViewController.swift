//
//  ViewController.swift
//  Gymcom
//
//  Created by LOKESH on 09/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2 )
        {
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "tapbar") as? tapbar
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        
    }


}

