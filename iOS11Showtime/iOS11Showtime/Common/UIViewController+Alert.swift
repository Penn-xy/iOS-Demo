//
//  UIViewController+Alert.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 Xu. All rights reserved.
//


import UIKit

extension UIViewController {
    
    func presentAlertController(withTitle title: String?, message: String?) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok",
                                                style: .default,
                                                handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}

