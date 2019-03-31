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

enum EcoFriendliness {
    case low
    case med
    case high
}

class SurveyVC: UIViewController {
    
    // Data
    var responses = [EcoFriendliness]()
    var pendingResponse: EcoFriendliness? {
        didSet {
            
        }
    }
    var surveyPage: Int {
        return responses.count
    }
    static var categories = ["Transportation", "Flying", "Food Habits", "Shopping", "Energy", "Warm Water", "Heating"]
    static var questions = [
        "Which statement is most accurate for you?",
        "Choose the option that best fits you!",
        "Which option do you think describes you best?",
        "Which statement is most accurate for you?",
        "Which option do you think describes you best?",
        "Choose the option that best fits you!",
        "Final question! What describes you best?"
    ]
    static var goods = [
        "I almost always use a bike, public transit, or walk to get around.",
        "I never fly.",
        "I only eat vegetarian food.",
        "I very rarely buy new products, clothes or decorative items.",
        "I live in a building that was built to be energy efficient.",
        "I generally don't shower for longer that 5 minutes and I rarely take a bath.",
        "In winter, I wear a pullover when I am at home (18-20°C)."
    ]
    
    static var mediums = [
        "I use the car and public transport about the same amount.",
        "I fly relatively infrequently. Approximately less than 5 flights per year.",
        "I eat meat 2 to 3 times a week.",
        "I buy new products, clothes or decorative things every now and again.",
        "I live in a normal building but I use renewable energy for heating.",
        "I love standing under the shower for a good 20 minutes - but in exchange I rarely have baths.",
        "In winter, it is pleasantly warm in my home (20-22°C)."
    ]
    
    static var bads = [
        "I almost always drive my own car.",
        "I am a very frequenty flier! I fly a couple times every month.",
        "I eat meat almost every day - mostly from an unknown source.",
        "I buy a new appliance, decoration, clothes or shoes every week.",
        "I live in a normal building that is heated with oil or natural gas.",
        "I often have baths - but in exchange I shower less often and only have short showers.",
        "I can sit in my living room with just a T-shirt in winter (over 22°C)."
    ]
    static var allOptions = [SurveyVC.bads, SurveyVC.mediums, SurveyVC.goods]
    
    // System
    var alerts: AlertManager!
    
    // UI Components
    var headerView: UIView!
    var categoryLabel: UILabel!
    var questionLabel: UILabel!
    
    var buttons = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        getData()
//        setupManagers()
        initUI()
    }
    
}
