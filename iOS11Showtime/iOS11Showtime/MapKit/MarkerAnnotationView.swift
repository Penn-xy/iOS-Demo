//
//  MarkerAnnotationView.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/14.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit
import MapKit

class MarkerAnnotationView: MKMarkerAnnotationView {
    
    override var annotation: MKAnnotation? {
        willSet {
            guard let annotation = newValue as? EmojiAnnotation else { return }
            clusteringIdentifier = annotation.type.rawValue
            markerTintColor = annotation.color
            glyphText = annotation.title
        }
    }
}

