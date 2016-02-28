//
//  EDButton.swift
//  El Dorado
//
//  Created by Jorge Raul Ovalle Zuleta on 2/27/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

struct EDButtonConfig{
    var type:EDButtonType
    var color:EDColor
    
    init(type:EDButtonType,color:EDColor){
        self.type  = type
        self.color = color
    }
}

enum EDButtonType{
    case Primary,Normal
}

class EDButton: UIButton {
    let config:EDButtonConfig
    init(config:EDButtonConfig){
        self.config = config
        super.init(frame: CGRectZero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor.getColor(self.config.color)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        switch (self.config.type){
            case .Primary: self.titleLabel?.font = UIFont.FontLight(EDFontSize.XL.rawValue)
            case .Normal:  self.titleLabel?.font = UIFont.FontRegular(EDFontSize.M.rawValue)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
