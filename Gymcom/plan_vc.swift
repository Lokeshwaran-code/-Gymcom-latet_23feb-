//
//  plan_vc.swift
//  Gymcom
//
//  Created by LOKESH on 09/02/24.
//

import UIKit

class plan_vc: UIViewController {

    
    @IBOutlet var plan1: UIImageView!
    @IBOutlet var plan3: UIImageView!

    @IBOutlet var p2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // image as button by tap gesture
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped1))
               plan1.isUserInteractionEnabled = true
               plan1.addGestureRecognizer(tapGestureRecognizer1)
       
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped2))
               p2.isUserInteractionEnabled = true
               p2.addGestureRecognizer(tapGestureRecognizer2)
        
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped3))
               plan3.isUserInteractionEnabled = true
               plan3.addGestureRecognizer(tapGestureRecognizer3)
    }
    
    // #selector (function)
    @objc func imageViewTapped1()
    {
            
        let a = self.storyboard?.instantiateViewController(withIdentifier: "plan_1") as! plan_1
        self.navigationController?.pushViewController(a, animated: true)
        
            //performSegue(withIdentifier: "showNewViewController", sender: self)
        }

    @objc func imageViewTapped2()
    {
            
        let b = self.storyboard?.instantiateViewController(withIdentifier: "plan_2") as! plan_2
        self.navigationController?.pushViewController(b, animated: true)
        
            //performSegue(withIdentifier: "showNewViewController", sender: self)
        }
    
    @objc func imageViewTapped3()
    {
            
        let c = self.storyboard?.instantiateViewController(withIdentifier: "plan_3") as! plan_3
        self.navigationController?.pushViewController(c, animated: true)
        
            //performSegue(withIdentifier: "showNewViewController", sender: self)
        }
    
}
