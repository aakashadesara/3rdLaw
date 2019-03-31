//
//  SurveyVC.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Main - Variable declarations and setup information


import UIKit
import ARMDevSuite

class SurveyVC: UIViewController {
    
    // Data
    var responses = [SurveyNiceLevel]()
    var pendingResponse: SurveyNiceLevel? {
        didSet {
            advanceButton.isEnabled = (self.pendingResponse != nil)
        }
    }
    var surveyPage: Int {
        return responses.count
    }
    var lastPage: Bool {
        return surveyPage + 1 == SurveyVC.questions.count
    }
    
    
    static let categories = ["Transportation", "Flying", "Food Habits", "Shopping", "Energy", "Warm Water", "Heating"]
    static let questions = [
        "Which statement is most accurate for you?",
        "Choose the option that best fits you!",
        "Which option do you think describes you best?",
        "Which statement is most accurate for you?",
        "Which option do you think describes you best?",
        "Choose the option that best fits you!",
        "Final question! What describes you best?"
    ]
    static let goods = [
        "I almost always use a bike, public transit, or walk to get around.",
        "I never fly.",
        "I only eat vegetarian food.",
        "I very rarely buy new products, clothes or decorative items.",
        "I live in a building that was built to be energy efficient.",
        "I generally don't shower for longer that 5 minutes and I rarely take a bath.",
        "In winter, I wear a pullover when I am at home (18-20°C)."
    ]
    
    static let mediums = [
        "I use the car and public transport about the same amount.",
        "I fly relatively infrequently. Approximately less than 5 flights per year.",
        "I eat meat 2 to 3 times a week.",
        "I buy new products, clothes or decorative things every now and again.",
        "I live in a normal building but I use renewable energy for heating.",
        "I love standing under the shower for a good 20 minutes - but in exchange I rarely have baths.",
        "In winter, it is pleasantly warm in my home (20-22°C)."
    ]
    
    static let bads = [
        "I almost always drive by car, taxi, Lyft, Uber, etc.",
        "I am a very frequenty flier! I fly a couple times every month.",
        "I eat meat almost every day - mostly from an unknown source.",
        "I buy a new appliance, decoration, clothes or shoes every week.",
        "I live in a normal building that is heated with oil or natural gas.",
        "I often have baths - but in exchange I shower less often and only have short showers.",
        "I can sit in my living room with just a T-shirt in winter (over 22°C)."
    ]
    static let allOptions = [SurveyVC.bads, SurveyVC.mediums, SurveyVC.goods]
    
    // System
    var alerts: AlertManager!
    
    // UI Components
    var headerView: UIView!
    var categoryLabel: UILabel!
    var questionLabel: UILabel!
    
    var buttons = [UIButton]()
    var wholeBar: UIView!
    
    var advanceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        getData()
//        setupManagers()
        initUI()
    }
    
}
