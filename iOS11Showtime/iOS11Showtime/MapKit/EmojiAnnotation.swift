//
//  EmojiAnnotation.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/14.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit
import MapKit

class EmojiAnnotation: NSObject, MKAnnotation {
    
    enum `Type`: String {
        case good, bad
    }
    
    let title: String?
    let color: UIColor
    let type: Type
    let coordinate: CLLocationCoordinate2D
    
    init(title: String?, color: UIColor, type: Type, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.color = color
        self.type = type
        self.coordinate = coordinate
    }
}
