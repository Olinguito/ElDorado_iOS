//
//  ExFont.swift
//  El Dorado
//
//  Created by Jorge Raul Ovalle Zuleta on 2/25/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//


import UIKit

enum EDFontSize:CGFloat{
    case XS  = 10.5 //21
    case S   = 12.5 //25
    case M   = 15 //30
    case L   = 16 //32
    case XL  = 20 //40
    case XXL = 22.5 //45
}

extension UIFont {
    /**
     Roboto Light
     
     - returns: Instance of Roboto Regular
     */
    class func FontLight(size:CGFloat) -> UIFont {
        return UIFont(name: "Roboto-Light", size: size)!
    }
    /**
     Roboto Light Italic
     
     - returns: Instance of Roboto Regular
     */
    class func FontLightItalic(size:CGFloat) -> UIFont {
        return UIFont(name: "Roboto-ThinItalic", size: size)!
    }
    /**
     Roboto Regular
     
     - returns: Instance of Roboto Regular
     */
    class func FontRegular(size:CGFloat) -> UIFont {
        return UIFont(name: "Roboto-Regular", size: size)!
    }
}