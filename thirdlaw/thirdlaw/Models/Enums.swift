//
//  Enums.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import Foundation
import UIKit
enum SurveyNiceLevel: Int {
    case low = 1
    case med = 2
    case high = 3
}

class EcoFriendliness: Comparable {
    static func < (lhs: EcoFriendliness, rhs: EcoFriendliness) -> Bool {
        return lhs.rank < rhs.rank
    }
    
    static func == (lhs: EcoFriendliness, rhs: EcoFriendliness) -> Bool {
        return lhs.rank == rhs.rank
    }
    
    static let cases = [
        EcoFriendliness(rank: 1, descriptor: "detrimental", color: UIColor.colorWithRGB(rgbValue: 0xFFA5A5)),
        EcoFriendliness(rank: 2, descriptor: "negative", color: UIColor.colorWithRGB(rgbValue: 0xF3C4AA)),
        EcoFriendliness(rank: 3, descriptor: "ineffective", color: UIColor.colorWithRGB(rgbValue: 0xD5E8AE)),
        EcoFriendliness(rank: 4, descriptor: "efficient", color: UIColor.colorWithRGB(rgbValue: 0x89DEBA)),
        EcoFriendliness(rank: 5, descriptor: "carbon neutral", color: UIColor.colorWithRGB(rgbValue: 0x7CD68B)),
        EcoFriendliness(rank: 6, descriptor: "excellent", color: UIColor.colorWithRGB(rgbValue: 0x44BB41)),
    ]
    
    
    var rank: Int
    var descriptor: String
    var color: UIColor
    
    private init(rank: Int, descriptor: String, color: UIColor) {
        self.rank = rank
        self.descriptor = descriptor
        self.color = color
    }
}
