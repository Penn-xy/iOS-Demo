//
//  UserDefaults+Storage.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 Xu. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    var blockedNumber: String? {
        get { return string(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }
}
