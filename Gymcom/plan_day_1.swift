//
//  plan_day_1.swift
//  Gymcom
//
//  Created by LOKESH on 21/02/24.
//

import UIKit

var dum2 : [String] = []

var img = ["mon","tue","wed","thu","fri","sat","sun"]
var l_day = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

class plan_day_1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

extension plan_day_1 : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dum1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1a", for: indexPath) as! cell_1a
        cell.lbl_1a.text = dum1[indexPath.row]
        cell.img_1.image = UIImage(named: img[indexPath.row])
        cell.lbl_1a_day.text = l_day[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        var dumpass2 : [String] = []
        
            
            if indexPath.row == 0
            {
                dumpass2 = ["Push up","Chest press","Decline push up","Dumbbell Fly","Dumbbell Decline Press"]
            }
            else if indexPath.row == 1
            {
                dumpass2 = ["Pull up","Cable pull down","Cable seated row","Deadlift"]
            }
            else if indexPath.row == 2
            {
                dumpass2 = ["Biceps Curl","Hammer","Dumbbell alternative","Reverse dumbbell curl","Concentration"]
            }
            else if indexPath.row == 3
            {
                dumpass2 = ["Cable push down","Kick back","Bench dips","Close grip push ups"]
            }
            else if indexPath.row == 4
            {
                dumpass2 = ["Battling ropes","Dumbbell arnlod press","Barbell military press","Cable lateral raise","Side raise"]
            }
            else if indexPath.row == 5
            {
                dumpass2 = ["Squat","Leg press","Leg extension","Sumo squat","Barbell lunges","Calf raise"]
            }
            else if indexPath.row == 6
            {
                dumpass2 = ["REST"]
            }
        
    
        
        dum2 = dumpass2
        performSegue(withIdentifier: "two_a", sender: self )


    }
}
