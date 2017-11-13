//
//  SwitchTableViewCell.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    
    var line: LandmarkLine? {
        didSet {
            if let line = line {
                titleLabel.text = line.description
                `switch`.isOn = !line.layer.isHidden
            }
        }
    }
    
    @IBAction func valueChanged(_ sender: Any) {
        line?.layer.isHidden = !`switch`.isOn
    }
}
