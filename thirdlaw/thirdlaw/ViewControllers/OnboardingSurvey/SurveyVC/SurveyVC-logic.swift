//
//  SurveyVC-logic.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Logic - Functions relating to the core functionality/value prop of the application.

import Foundation
import UIKit
import ARMDevSuite

extension SurveyVC {
    @objc func selectOption(_ sender: UIButton) {
        if !sender.isSelected {
            buttons.forEach { (button) in
                if button != sender {
                    button.isSelected = false
                }
            }
            
            self.pendingResponse = [.low, .med, .high][sender.tag]
        }

        sender.isSelected = !sender.isSelected

        
    }


}
