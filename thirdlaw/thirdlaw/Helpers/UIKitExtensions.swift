//
//  UIKitExtensions.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import Foundation
import UIKit

extension UIEdgeInsets {
    init(padding: CGFloat) {
        self.init(top: padding, left: padding, bottom: padding, right: padding)
    }
}

extension NSMutableAttributedString {
    func setAttribute(_ name: NSAttributedString.Key, value: Any, substring: String) {
        let range: NSRange = self.mutableString.range(of: substring, options: .caseInsensitive)
        self.addAttribute(name, value: value, range: range)
    }
    func setAttribute(_ name: NSAttributedString.Key, value: Any) {
        self.addAttribute(name, value: value, range: NSRange(location: 0, length: self.length))
    }
}

extension UIView {
    var firstResponder: UIView? {
        guard !self.isFirstResponder else { return self }
        
        for subview in self.subviews {
            if let firstResponder = subview.firstResponder {
                return firstResponder
            }
        }
        
        return nil
    }
    
}
