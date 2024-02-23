//
//  plan_w_1.swift
//  Gymcom
//
//  Created by LOKESH on 21/02/24.
//

import UIKit

var dum3 : String?
 
class plan_w_1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

}

extension plan_w_1: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dum2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2a", for: indexPath) as! cell_2a
        cell.lbl_2a.text = dum2[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) 
    {
        dum3 = dum2[indexPath.row]
        performSegue(withIdentifier: "three_a", sender: self )

    }
}
