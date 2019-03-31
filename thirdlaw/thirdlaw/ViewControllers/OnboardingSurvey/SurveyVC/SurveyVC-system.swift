//
//  SurveyVC-system.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// System - Segues, Observers, Managers, and UI Event Triggers

import Foundation
import UIKit
import ARMDevSuite

extension SurveyVC {

    override func viewWillAppear(_ animated: Bool) {

    }

    override func viewDidAppear(_ animated: Bool) {

    }

    override func viewWillDisappear(_ animated: Bool) {
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let results = segue.destination as? SurveyResults {
            results.results = self.responses
        }
        if let nextQ = segue.destination as? SurveyVC {
            nextQ.responses = self.responses
        }
    }

    // Segue Out Functions
    @objc func toSurveyResults() {
        self.performSegue(withIdentifier: "survey2results", sender: self)
    }

}
