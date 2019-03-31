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
        return Int(Double(results.count) * 3 * 1.1) // 1.1 = impossibility factor
    }
    var tier: EcoFriendliness!
    
    // System
    var alerts: AlertManager!
    let horizontalPadding: CGFloat = 1.5 * .padding

    
    // UI Components
    var navigationTitle: UILabel!
    var navigationBar: UIView!
    
    var neutralityPercent: UILabel!
    var neutralityTitle: UILabel!
    var neutralityDetail: UILabel!
        var neutralityBorder: UIView!
    
    var spectrum: UIStackView!
    var spectrumPointer: UIView!
    
    var cta: UILabel!
    var ctaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        results = (0..<7).map({_ in return SurveyNiceLevel.allCases.randomElement()!})
        getData()
        
//        setupManagers()
        initUI()
    }
    
}
