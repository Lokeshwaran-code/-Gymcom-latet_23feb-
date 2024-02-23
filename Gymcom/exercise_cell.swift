//
//  exercise_cell.swift
//  Gymcom
//
//  Created by LOKESH on 10/02/24.
//

import UIKit

class exercise_cell: UITableViewCell {

    
    @IBOutlet var exelbl: UILabel!
    
    @IBOutlet var exe_img: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
