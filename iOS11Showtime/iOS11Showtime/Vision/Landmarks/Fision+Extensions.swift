//
//  Fision+Extensions.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 Xu. All rights reserved.
//

import Vision

extension VNFaceLandmarks2D {
    
    var landmarkRegions: [VNFaceLandmarkRegion2D] {
        var landmarkRegions = [VNFaceLandmarkRegion2D]()
        if let faceContour = faceContour {
            landmarkRegions.append(faceContour)
        }
        if let leftEye = leftEye {
            landmarkRegions.append(leftEye)
        }
        if let rightEye = rightEye {
            landmarkRegions.append(rightEye)
        }
        if let nose = nose {
            landmarkRegions.append(nose)
        }
        if let outerLips = outerLips {
            landmarkRegions.append(outerLips)
        }
        return landmarkRegions
    }
}

