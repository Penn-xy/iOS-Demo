//
//  DeviceCheckingViewController.swift
//  DeviceChecking
//
//  Created by apple on 2017/11/15.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit
import DeviceCheck

class DeviceCheckingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        DCDevice.current.generateToken { data, error in
            print(data ?? "No data")
            print(error ?? "No errors")
        }
    }
}
