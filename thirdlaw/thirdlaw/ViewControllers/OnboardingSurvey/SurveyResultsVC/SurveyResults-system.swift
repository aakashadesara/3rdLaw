//
//  SurveyResults-system.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// System - Segues, Observers, Managers, and UI Event Triggers

import Foundation
import UIKit
import ARMDevSuite

extension SurveyResults {
    func setupManagers() {
//        alerts = AlertManager(vc: self)
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
    @objc func toSignUp() {
        self.performSegue(withIdentifier: "results2signup", sender: self)
    }

}
