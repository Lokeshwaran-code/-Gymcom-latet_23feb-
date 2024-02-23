//
//  plan_1.swift
//  Gymcom
//
//  Created by LOKESH on 16/02/24.
//

import UIKit


var dum1 : [String] = []

let a  = (1...8).map{ "week \($0)" }

class plan_1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension plan_1 : UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! months_1
        cell.lbl_1.text = a[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) 
    {
        var dumpass1 : [String] = []
            
            if indexPath.row == 0
            {
                dumpass1 = ["Chest","Back","Biceps","Triceps","Shoulder","Leg","Rest"]
            }
            else if indexPath.row == 1
            {
                dumpass1 = ["Chest & Triceps","Bieceps & Back","Rest","Shoulder","Leg","Cardio","Rest"]
            }
            else if indexPath.row == 2
            {
                dumpass1 = ["Chest","Back","Biceps","Triceps","Shoulder","Leg","Rest"]
            }
            else if indexPath.row == 3
            {
                dumpass1 = ["Chest & Triceps","Biceps & Back","Shoulder","Leg","Push","Pull","Rest"]
            }
            else if indexPath.row == 4
            {
                dumpass1 = ["Chest & Back","Leg","Arms","Rest","Chest & Back","Leg","Arms"]
            }
            else if indexPath.row == 5
            {
                dumpass1 = ["Rest","Chest & Back","Leg","Arms","Chest & Back","Leg","Rest"]
            }
            else if indexPath.row == 6
            {
                dumpass1 = ["Push","Pull","Arms","Rest","Push","Pull","Leg"]
            }
            
            else if indexPath.row == 7
            {
                dumpass1 = ["Rest","Chest","Back","Biceps","Triceps","Shoulder","Leg"]
            }

       
        dum1 = dumpass1
        performSegue(withIdentifier: "one_a", sender: self )

        
    }
    
}
