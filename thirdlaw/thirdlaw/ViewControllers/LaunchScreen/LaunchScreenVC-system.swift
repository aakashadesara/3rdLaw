//
//  LaunchScreenVC-system.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// System - Segues, Observers, Managers, and UI Event Triggers

import Foundation
import UIKit
import ARMDevSuite

extension LaunchScreenVC {
    func setupManagers() {

    }

    override func viewWillAppear(_ animated: Bool) {

    }

    override func viewDidAppear(_ animated: Bool) {

    }

    override func viewWillDisappear(_ animated: Bool) {
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

    // Segue Out Functions
    func toSurvey() {
        self.performSegue(withIdentifier: "launch2survey", sender: self)
    }

}
