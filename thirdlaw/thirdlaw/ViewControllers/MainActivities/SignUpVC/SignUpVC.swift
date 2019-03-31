//
//  SignUpVC.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Main - Variable declarations and setup information


import UIKit
import ARMDevSuite

class SignUpVC: UIViewController {
    
    // Data
    
    // System
    
    // UI Components
    var imageView: UIImageView!
    var header: UILabel!
    var topBar: UIView!
    var firstName: ARMTextField!
    var lastName: ARMTextField!
    var userName: ARMTextField!
    var password: ARMTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        getData()
//        setupManagers()
        initUI()
    }
    
}
