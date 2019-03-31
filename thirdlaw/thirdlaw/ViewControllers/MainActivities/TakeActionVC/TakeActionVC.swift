//
//  takeActionVC.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Main - Variable declarations and setup information


import UIKit
import ARMDevSuite

class TakeActionVC: UIViewController {
    
    // Data
    
    // System
    var alerts: AlertManager!
    
    // UI Components
    var header: UILabel!
    var topBar: UIView!
    var paragraph: UILabel!
    
    var lifestyleButton: UIButton!
    var offsetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initUI()
    }
    
}
