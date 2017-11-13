//
//  Face.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit

struct Face {
    
    let rect: CGRect
    let landmarks: [Landmark]
}

struct Landmark {
    
    let type: LandmarkType
    let points: [CGPoint]
    
    enum LandmarkType: String {
        case faceContour
        case leftEye
        case rightEye
        case leftEyebrow
        case rightEyebrow
        case nose
        case noseCrest
        case medianLine
        case outerLips
        case innerLips
        case leftPupil
        case rightPupil
    }
}
