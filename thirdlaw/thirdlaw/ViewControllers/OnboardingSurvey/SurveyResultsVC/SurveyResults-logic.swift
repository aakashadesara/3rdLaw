//
//  SurveyResults-logic.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Logic - Functions relating to the core functionality/value prop of the application.

import Foundation
import UIKit
import ARMDevSuite

extension SurveyResults {
    func getData() {
        self.score = self.results.map({$0.rawValue}).reduce(0, +)
        
    }


}
