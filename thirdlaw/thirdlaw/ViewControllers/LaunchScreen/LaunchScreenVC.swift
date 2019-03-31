//
//  ViewController.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import UIKit
import ARMDevSuite

class LaunchScreenVC: UIViewController {

    var logoView: UIImageView!
    
    var headerLabel: UILabel!
    var bodyText: UILabel!
    
    var beginSurveyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initUI()
    }


}

