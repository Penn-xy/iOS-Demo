//
//  DataSource.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit

struct Example {
    let title: String
    let description: String
    let storyboardName: String
    let controllerID: String?
    
    init(title: String, description: String, storyboardName: String, controllerID: String? = nil) {
        self.title = title
        self.description = description
        self.storyboardName = storyboardName
        self.controllerID = controllerID
    }
    
    var controller: UIViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController: UIViewController?
        if let controllerID = controllerID {
            viewController = storyboard.instantiateViewController(withIdentifier: controllerID)
        }
        else {
            viewController = storyboard.instantiateInitialViewController()
        }
        viewController?.title = title
        return viewController
    }
}

struct DataSource {
    lazy var examples: [Example] = [Example(title: "🤖 Core ML",
                                            description: "Object classification using Core ML framework",
                                            storyboardName: "CoreML"),
                                    Example(title: "👀 Vision",
                                            description: "Face detection using Vision framework",
                                            storyboardName: "Vision"),
                                    Example(title: "🚀 ARKit",
                                            description: "Augmented reality experiences in your app or game",
                                            storyboardName: "ARKit"),
                                    Example(title: "👆Drag And Drop",
                                            description: "Easy way to move content",
                                            storyboardName: "DragAndDrop"),
                                    Example(title: "🗺 MapKit",
                                            description: "Clustering and new annotation views",
                                            storyboardName: "MapKit"),
                                    Example(title: "✉️ IdentityLookup",
                                            description: "Filter unwanted SMS and MMS messages",
                                            storyboardName: "IdentityLookup"),
                                    Example(title: "🎮 SpriteKit",
                                            description: "Attributed text for SKLabelNode and SKTransformNode",
                                            storyboardName: "SpriteKit")]
}

