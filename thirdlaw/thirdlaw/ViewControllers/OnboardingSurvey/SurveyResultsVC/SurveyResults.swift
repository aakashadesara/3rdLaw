//
//  SurveyResults.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Main - Variable declarations and setup information


import UIKit
import ARMDevSuite

class SurveyResults: UIViewController {
    
    // Data
    var results: [SurveyNiceLevel]!
    /// Score
    var score: Int!
    var maxScore: Int {
        return results.count * 3
    }
    
    // System
    var alerts: AlertManager!
    
    // UI Components
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        getData()
//        setupManagers()
//        initUI()
    }
    
}
