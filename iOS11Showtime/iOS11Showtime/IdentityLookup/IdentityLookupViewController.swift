//
//  IdentityLookupViewController.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/15.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit

class IdentityLookupViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func filterButtonAction(_ sender: Any) {
        UserDefaults(suiteName: "group.com.xu.iOS11Show")?.blockedNumber = textField.text
    }
}
