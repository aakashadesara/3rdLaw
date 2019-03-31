//
//  SurveyVC-initUI.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// UI Initialization - Create the View

import Foundation
import UIKit
import ARMDevSuite

extension SurveyVC {
    func initUI() {
        createHeader()
        addButtons()
    }

    // UI Initialization Helpers
    func createHeader() {
        
        let horizontalPadding: CGFloat = 1.5 * .padding
        
        categoryLabel = UILabel(); view.addSubview(categoryLabel)
            categoryLabel.translatesAutoresizingMaskIntoConstraints = false
            categoryLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: .padding).isActive = true
            categoryLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: horizontalPadding).isActive = true
        categoryLabel.font = .abelMedium
        categoryLabel.textColor = .thirdLightGreen
        categoryLabel.text = SurveyVC.categories[surveyPage]
        
        
        questionLabel = UILabel(); view.addSubview(questionLabel)
            questionLabel.translatesAutoresizingMaskIntoConstraints = false
            questionLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: .padding).isActive = true
            questionLabel.leadingAnchor.constraint(equalTo: categoryLabel.leadingAnchor).isActive = true
            questionLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -horizontalPadding).isActive = true
        questionLabel.font = .abelLarge
        questionLabel.textColor = .white
        questionLabel.text = SurveyVC.questions[surveyPage]
        questionLabel.numberOfLines = 0
        questionLabel.lineBreakMode = .byWordWrapping
        
        headerView = UIView(); view.addSubview(headerView) ;view.sendSubviewToBack(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1).isActive = true
        headerView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        headerView.bottomAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 2 * .padding).isActive = true
        headerView.backgroundColor = .thirdDarkGreen5
        
    }
    func addButtons() {
        var last: UIView! = headerView
        for i in 0..<3 {
            let butt = UIButton(); view.addSubview(butt)
                butt.translatesAutoresizingMaskIntoConstraints = false
                butt.leadingAnchor.constraint(equalTo: questionLabel.leadingAnchor).isActive = true
                butt.topAnchor.constraint(equalTo: last.bottomAnchor, constant: .padding).isActive = true
                butt.widthAnchor.constraint(equalToConstant: .buttonThin).isActive = true
                butt.heightAnchor.constraint(equalTo: butt.widthAnchor, multiplier: 1).isActive = true
            butt.addBorder(colored: .thirdDarkGreen5, thickness: 1)
            butt.setImage(UIImage.buttonCheck.withRenderingMode(.alwaysTemplate), for: .selected)
            butt.tintColor = .thirdBrown
            butt.tag = i
            
            let label = UILabel(); view.addSubview(label)
                label.translatesAutoresizingMaskIntoConstraints = false
                label.leadingAnchor.constraint(equalToSystemSpacingAfter: butt.trailingAnchor, multiplier: 2).isActive = true
                label.topAnchor.constraint(equalTo: butt.topAnchor).isActive = true
                label.trailingAnchor.constraint(equalTo: questionLabel.trailingAnchor).isActive = true
            label.font = UIFont.proximaLarge
            label.textColor = .thirdBrown
            label.text = SurveyVC.allOptions[i][surveyPage]
            label.numberOfLines = 0
            label.lineBreakMode = .byWordWrapping
            
            last = label
            
        }
    }

}
