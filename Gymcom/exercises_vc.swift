//
//  exercises_vc.swift
//  Gymcom
//
//  Created by LOKESH on 09/02/24.
//

struct root : Codable
{
    var workout_name : String?
}

import UIKit

var myindex : [String] = []

var imgs : [String] = ["chest","back","biceps","tri","forearm","shoulder","thigh","calf","abs","hip","cardio"]

class exercises_vc: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return json?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exercise_cell",for: indexPath) as! exercise_cell
        cell.exelbl.text = json?[indexPath.row].workout_name
        cell.exe_img.image = UIImage(named: imgs[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) 
    {
        var selecteditems : [String] = []
        
        if indexPath.row == 0
        {
            selecteditems = [
                "Push-up",
                "Decline Push-up",
                "Chest Dip",
                "Dumbbell Bench Press",
                "Dumbbell Decline Press",
                "Dumbbell Fly",
                "Dumbbell Pullover",
                "Lever Pec Deck Fly",
                "Lever Seated Fly",
                "Lever Chest Press",
                "Close Grip Bench Press",
                "Decline Press",
                "Incline Dumbbell Flys",
                "Incline Press",
                "Mid Cable Crossover",
                "Weighted Push-ups",
                "Incline Dumbbell Press"
              ]
                             
            print(selecteditems)
        }
        else if indexPath.row == 1
        {
            selecteditems = [
                "Chin up",
                "Assisted pull up",
                "Pull up",
                "Reverse grip pull up",
                "Cable pull down",
                "Cable seated row",
                "Dumbbell bent over row",
                "Cable underhand pull down",
                "Dumbbell shrug",
                "Barbell shrug",
                "Cable seated high row V-Bar",
                "Lever bent over row",
                "Hanging dumbbell rows",
                "Deadlift",
                "Barbell bent over row"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 2
        {
            selecteditems = [
                "Dumbbell alternative biceps curl upper arms",
                "Dumbbell incline biceps curl upper arms",
                "Dumbbell biceps curl upper arms",
                "Dumbbell standing biceps curl upper arms",
                "Dumbbell seated curl upper arms",
                "Cable biceps curl upper arms",
                "Barbell curl upper arms",
                "Barbell preacher curl upper arms",
                "Concentration",
                "Barbell preacher curl",
                "Reverse dumbbell curl",
                "Dumbbell hammer curl"]
            print(selecteditems)
        }
        else if indexPath.row == 3
        {
            selecteditems = [
                "Bench dips",
                "Cable push down upper arms",
                "Dumbbell decline triceps extension",
                "Dumbbell kickback",
                "Barbell seated overhead triceps extension",
                "EZ bar french press",
                "Bentover single arm cable kickback",
                "Close grip push up",
                "Hyperbench rope pushdown",
                "Seated overhead rope extension",
                "Standing overhead dumbbell extension",
                "V-Bar pushdown",
                "Diamond push up bench"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 4
        {
            selecteditems = [
                "Barbell wrist curl",
                "Dumbbell one arm reverse wrist curl",
                "Dumbbell seated neutral wrist curl",
                "Barbell slams down wrist curl over a bench",
                "Barbell reverse wrist curl",
                "Hammer curl",
                "Alternative hammer curl"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 5
        {
            selecteditems = [
                "Dumbbell alternate front raise",
                "Dumbbell standing overhead press",
                "Dumbbell arnold press",
                "Dumbbell seated shoulder press",
                "Battling ropes",
                "Cable lateral raise",
                "Barbell military press",
                "Dumbbell rear fly",
                "Dumbbell seated bent arm lateral raise"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 6
        {
            selecteditems = [
                "Squat",
                "Lever seated leg press",
                "Sled 45 leg press",
                "Lever lying leg curl",
                "Lever leg extension",
                "Dumbbell squat",
                "Barbell full squat",
                "Barbell front chest squat",
                "Sumo squat",
                "Barbell lunges"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 7
        {
            selecteditems = [
                "Calf raise",
                "Dumbbell standing calf raise",
                "One leg toe raise",
                "Seated dumbbell calf raise",
                "Standing barbell calf raise",
                "Calf jump"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 8
        {
            selecteditems = [
                "Crunches",
                "Decline crunch",
                "Hanging leg raise",
                "Incline leg raise",
                "Kneeling cable crunch",
                "Leg raise",
                "Twisted hip raise",
                "Seated jack knife",
                "Plank",
                "Side plank"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 9
        {
            selecteditems = [
                "Pelvic tilt into bridge",
                "Frankenstein walk",
                "Lateral step-up",
                "Hip marching",
                "Floor hip flexors",
                "Butterfly pose"
            ]
            print(selecteditems)
        }
        else if indexPath.row == 10
        {
            selecteditems = [
                "Burpee",
                "Jumping Squat",
                "Half burpees",
                "High Knees",
                "Mountain climbers",
                "Moving planks",
                "Jumping jacks"
            ]
            print(selecteditems)
        }
      
        myindex = selecteditems
        performSegue(withIdentifier: "move", sender: self )
    }
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getdata()
    }
    
    var json: [root]?

func getdata()
    {
        var url = URL(string: "https://mocki.io/v1/fd2aa70e-a306-48cc-af13-285419a266c3"
        )
        var task = URLSession.shared.dataTask(with: url!)
        {
            (data,resposne,error) in
            
            do
            {
                let content = try? JSONDecoder().decode([root].self, from: data!)
                self.json = content
                
                DispatchQueue.main.async 
                {
                    self.table.reloadData()
                }
            }
            
            catch
            {
                print(error)
            }
        }
        task.resume()
    }
   

}
