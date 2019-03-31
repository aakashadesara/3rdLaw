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
        } else {
            self.pendingResponse = nil
        }

        sender.isSelected = !sender.isSelected
    }
    
    @objc func toNextQuestion() {
        
        guard let resp = self.pendingResponse else { return }
        self.responses.append(resp)
        
        guard self.responses.count != SurveyVC.questions.count else {
            toSurveyResults()
            return
        }
        
        self.performSegue(withIdentifier: "2nextquestion", sender: self)
    }


}
