//
//  ImageTableViewCell.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        contentView.addSubview(mainImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainImageView.frame = contentView.bounds
    }
}
