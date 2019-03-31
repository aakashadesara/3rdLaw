//
//  UIAttributeExtensions.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import Foundation
import UIKit
import ARMDevSuite

extension UIImage {
    static let logoDark     = UIImage(named: "logo-dark")!
    static let logoLight    = UIImage(named: "logo-light")!
    
    static let buttonCheck  = UIImage(named: "check")!
}

extension UIFont {
    static let abelXLarge           = UIFont(name: "Abel-Regular", size: 60)!
    static let abelLarge            = UIFont(name: "Abel-Regular", size: 35)!
    static let abelMedium           = UIFont(name: "Abel-Regular", size: 30)!
    
    static let proximaLargeLight  = UIFont(name: "ProximaNovaA-Light", size: 24)!
    static let proximaLarge       = UIFont(name: "ProximaNovaA-Regular", size: 24)!
    static let proximaMedium       = UIFont(name: "ProximaNovaA-Regular", size: 16)!
    
    static let proximaSmall     = UIFont(name: "ProximaNovaA-Regular", size: 12)!

    
    
}

extension UIColor {
    /// Green lvl 1
    static let thirdPastelGreen1    = UIColor.colorWithRGB(rgbValue: 0xECECAB)
    /// Green lvl 2
    static let thirdLimeGreen2      = UIColor.colorWithRGB(rgbValue: 0xBFE368)
    /// Green lvl 3
    static let thirdGrassGreen3     = UIColor.colorWithRGB(rgbValue: 0xB0C24C)
    /// Green lvl 4
    static let thirdMudGreen4       = UIColor.colorWithRGB(rgbValue: 0x869B33)
    /// Green lvl 5
    static let thirdDarkGreen5      = UIColor.colorWithRGB(rgbValue: 0x667B44)
    
    /// Brown
    static let thirdBrown           = UIColor.colorWithRGB(rgbValue: 0x825107)
    static let thirdLightGreen      = UIColor.colorWithRGB(rgbValue: 0xDDFFA5)
}

extension CGFloat {
    static let padding: CGFloat = 20
    static let marginalPadding: CGFloat = 8
    
    static let buttonThin: CGFloat = 50
    static let buttonThick: CGFloat = 80
}
