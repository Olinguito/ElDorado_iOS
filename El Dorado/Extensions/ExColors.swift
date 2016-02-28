//
//  ExColors.swift
//  El Dorado
//
//  Created by Jorge Raul Ovalle Zuleta on 2/24/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit


enum EDColor{
    case DarkGray,Green,Yellow,LightOrange,DarkOrange,Red
}

extension UIColor {
    /**
     EDDarkGray
     
     - returns: Dark gray for Backgrounds
     */
    class func EDDarkGray() -> UIColor {
        return UIColor(red:0.24, green:0.24, blue:0.24, alpha:1)
    }
    
    
    /**
     EDGreen
     
     - returns: Green color
     */
    class func EDGreen() -> UIColor {
        return UIColor(red:0.27, green:0.69, blue:0.67, alpha:1)
    }
    
    /**
     EDYellow
     
     - returns: Yellow color
     */
    class func EDYellow() -> UIColor {
        return UIColor(red:0.85, green:0.64, blue:0.15, alpha:1)
    }
    
    /**
     EDOrangeLight
     
     - returns: Light orange
     */
    class func EDLightOrange() -> UIColor {
        return UIColor(red:0.76, green:0.4, blue:0.16, alpha:1)
    }
    
    /**
     EDOrangeDark
     
     - returns: Dark orange
     */
    class func EDDarkOrange() -> UIColor {
        return UIColor(red:0.61, green:0.25, blue:0.14, alpha:1)
    }
    
    /**
     EDRed
     
     - returns: Red color
     */
    class func EDRed() -> UIColor {
        return UIColor(red:0.56, green:0.16, blue:0.06, alpha:1)
    }

    
    /**
     Get Color by EDConfig
     
     - returns: Asked color
     */
    class func getColor(color:EDColor) -> UIColor {
        switch(color){
            case .DarkGray:    return darkGrayColor()
            case .DarkOrange:  return EDDarkOrange()
            case .Green:       return EDGreen()
            case .LightOrange: return EDLightOrange()
            case .Red:         return EDRed()
            case .Yellow:      return EDYellow()
        }
    }
    
}