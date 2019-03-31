//
//  LaunchScreenVC-initUI.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// UI Initialization - Create the View

import Foundation
import UIKit
import ARMDevSuite

extension LaunchScreenVC {
    func initUI() {
        initLogo()
        initText()
        initButton()
        initSideLine()
    }

    // UI Initialization Helpers
    func initLogo() {
        self.logoView = UIImageView(); view.addSubview(logoView)
            logoView.translatesAutoresizingMaskIntoConstraints = false
            logoView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: .padding * 1.5).isActive = true
            logoView.topAnchor.constraint(equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.topAnchor, multiplier: 3).isActive = true
            logoView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 2/3).isActive = true
            logoView.heightAnchor.constraint(equalTo: logoView.widthAnchor, multiplier: 1).isActive = true
        logoView.contentMode = .scaleAspectFit
        logoView.image = UIImage.logoLight
    }
    
    func initText() {
        headerLabel = UILabel(); view.addSubview(headerLabel)
            headerLabel.translatesAutoresizingMaskIntoConstraints = false
            headerLabel.leadingAnchor.constraint(equalTo: logoView.leadingAnchor).isActive = true
            headerLabel.topAnchor.constraint(equalToSystemSpacingBelow: logoView.bottomAnchor, multiplier: 1).isActive = true
        headerLabel.text = "thirdlaw"
        headerLabel.font = .abelXLarge
        headerLabel.textColor = .thirdDarkGreen5
        
        bodyText = UILabel(); view.addSubview(bodyText)
            bodyText.translatesAutoresizingMaskIntoConstraints = false
            bodyText.leadingAnchor.constraint(equalTo: headerLabel.leadingAnchor).isActive = true
            bodyText.topAnchor.constraint(equalTo: headerLabel.bottomAnchor).isActive = true
            bodyText.widthAnchor.constraint(equalTo: logoView.widthAnchor, multiplier: 1).isActive = true
        bodyText.numberOfLines = 0
        bodyText.text = """
        Understand your affect on the world, make some adjustments, become a carbon neutral human, all while earning fun rewards.
        
        It all starts from a short 3 minute survey:
        """
        bodyText.font = .proximaLargeLight
        bodyText.textColor = .thirdBrown
    }

    func initButton() {
        beginSurveyButton = UIButton(); view.addSubview(beginSurveyButton)
            beginSurveyButton.translatesAutoresizingMaskIntoConstraints = false
            beginSurveyButton.leadingAnchor.constraint(equalTo: self.bodyText.leadingAnchor).isActive = true
            beginSurveyButton.topAnchor.constraint(equalToSystemSpacingBelow: bodyText.bottomAnchor, multiplier: 3).isActive = true
            beginSurveyButton.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2).isActive = true
            beginSurveyButton.heightAnchor.constraint(equalToConstant: .buttonThin).isActive = true
        beginSurveyButton.setBackgroundColor(color: .thirdDarkGreen5, forState: .normal)
        beginSurveyButton.setTitle("Begin Survey >", for: .normal)
        beginSurveyButton.setTitleColor(.white, for: .normal)
        beginSurveyButton.titleLabel?.font = UIFont.proximaLargeLight
        
        beginSurveyButton.addTarget(self, action: #selector(beginSurvey), for: .touchUpInside)
    }
    
    func initSideLine() {
        let sideLine = UIView(); view.addSubview(sideLine)
            sideLine.translatesAutoresizingMaskIntoConstraints = false
            sideLine.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            sideLine.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            sideLine.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
            sideLine.widthAnchor.constraint(equalToConstant: .padding * 2).isActive = true
        sideLine.backgroundColor = .thirdDarkGreen5
        
        
        
    }
    
}
