//
//  SurveyResults-initUI.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// UI Initialization - Create the View

import Foundation
import UIKit
import ARMDevSuite

extension SurveyResults {
    func initUI() {
        initNav()
        initSummary()
        initSpectrum()
        initCTAs()
    }
    
    // UI Initialization Helpers
    func initNav(){
        
        self.navigationTitle = UILabel(); view.addSubview(navigationTitle)
        navigationTitle.translatesAutoresizingMaskIntoConstraints = false
        navigationTitle.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: .padding).isActive = true
        navigationTitle.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: horizontalPadding).isActive = true
        navigationTitle.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true

        navigationTitle.font = UIFont.abelMedium
        navigationTitle.text = "Survey Results"
        navigationTitle.textColor = .thirdLightGreen
        
        self.navigationBar = UIView(); view.addSubview(navigationBar); view.sendSubviewToBack(navigationBar)
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        navigationBar.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        navigationBar.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        navigationBar.bottomAnchor.constraint(equalTo: navigationTitle.bottomAnchor, constant: .padding).isActive = true
        navigationBar.backgroundColor = .thirdDarkGreen5
    }
    
    func initSummary() {
        self.neutralityPercent = UILabel(); view.addSubview(neutralityPercent)
            neutralityPercent.translatesAutoresizingMaskIntoConstraints = false
            neutralityPercent.leadingAnchor.constraint(equalTo: navigationTitle.leadingAnchor).isActive = true
            neutralityPercent.topAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: .padding).isActive = true
            neutralityPercent.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        neutralityPercent.text = "\(Int((Double(self.score)/Double(self.maxScore) * 100)))%"
        neutralityPercent.font = UIFont.abelXLarge.withSize(100)
        neutralityPercent.textColor = tier.color
        neutralityPercent.textAlignment = .right
        
        self.neutralityTitle = UILabel(); view.addSubview(neutralityTitle)
            neutralityTitle.translatesAutoresizingMaskIntoConstraints = false
            neutralityTitle.leadingAnchor.constraint(equalTo: neutralityPercent.trailingAnchor, constant: .marginalPadding).isActive = true
            neutralityTitle.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -horizontalPadding).isActive = true
            neutralityTitle.centerYAnchor.constraint(equalTo: self.neutralityPercent.centerYAnchor).isActive = true
        neutralityTitle.text = "of the way there to becoming a carbon neutral human."
        neutralityTitle.textColor = .black
        neutralityTitle.font = .proximaLarge
        neutralityTitle.numberOfLines = 3
        neutralityTitle.adjustsFontSizeToFitWidth = true
        
        self.neutralityBorder = UILabel(); view.addSubview(neutralityBorder)
            neutralityBorder.translatesAutoresizingMaskIntoConstraints = false
            neutralityBorder.topAnchor.constraint(equalTo: neutralityPercent.bottomAnchor).isActive = true
            neutralityBorder.leadingAnchor.constraint(equalTo: neutralityPercent.leadingAnchor).isActive = true
            neutralityBorder.trailingAnchor.constraint(equalTo: neutralityTitle.trailingAnchor).isActive = true
        neutralityBorder.addBorder(colored: .thirdDarkGreen5, thickness: 3)
        
        let padding: CGFloat = 10
        
        self.neutralityDetail = UILabel(); view.addSubview(neutralityDetail)
            neutralityDetail.translatesAutoresizingMaskIntoConstraints = false
            neutralityDetail.topAnchor.constraint(equalTo: neutralityBorder.topAnchor, constant: padding).isActive = true
            neutralityDetail.leadingAnchor.constraint(equalTo: neutralityBorder.leadingAnchor, constant: padding).isActive = true
            neutralityDetail.trailingAnchor.constraint(equalTo: neutralityBorder.trailingAnchor, constant: -padding).isActive = true
            neutralityDetail.bottomAnchor.constraint(equalTo: neutralityBorder.bottomAnchor, constant: -padding).isActive = true
        
        let attributed = NSMutableAttributedString(string: "Although you have done good things for the environment, there is still room for improvement. As you see, you are currently \(self.tier.descriptor). Let’s help you improve that.")
        
        attributed.setAttribute(.backgroundColor, value: tier.color, substring: tier.descriptor)
        attributed.setAttribute(.font, value: UIFont.proximaSmall)
        neutralityDetail.attributedText = attributed
        neutralityDetail.numberOfLines = 3
        
    }
    
    func initSpectrum() {
        
        spectrum = UIStackView(); view.addSubview(spectrum)
            spectrum.translatesAutoresizingMaskIntoConstraints = false
            spectrum.leadingAnchor.constraint(equalTo: neutralityBorder.leadingAnchor).isActive = true
            spectrum.trailingAnchor.constraint(equalTo: neutralityBorder.trailingAnchor).isActive = true
            spectrum.topAnchor.constraint(equalTo: neutralityBorder.bottomAnchor, constant: .padding).isActive = true
            spectrum.heightAnchor.constraint(equalToConstant: .buttonThin * 0.75).isActive = true
        spectrum.axis = .horizontal
        spectrum.alignment = .fill
        spectrum.distribution = .fillEqually
        
        for level in EcoFriendliness.cases {
            let label = UILabel()
                label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.abelMedium.withSize(12)
            label.backgroundColor = level.color
            label.textColor = .white
            label.text = level.descriptor
            label.textAlignment = .center
            label.adjustsFontSizeToFitWidth = true
            spectrum.addArrangedSubview(label)
        }
        
        let layoutHelper = UIView(); view.addSubview(layoutHelper)
            layoutHelper.translatesAutoresizingMaskIntoConstraints = false
            layoutHelper.widthAnchor.constraint(equalTo: spectrum.widthAnchor, multiplier: CGFloat(score)/CGFloat(maxScore)).isActive = true
            layoutHelper.heightAnchor.constraint(equalTo: spectrum.heightAnchor, multiplier: 1).isActive = true
            layoutHelper.leadingAnchor.constraint(equalTo: spectrum.leadingAnchor).isActive = true
            layoutHelper.topAnchor.constraint(equalTo: spectrum.topAnchor).isActive = true
        layoutHelper.alpha = 0
        
        self.spectrumPointer = UIView(); view.addSubview(spectrumPointer)
            spectrumPointer.translatesAutoresizingMaskIntoConstraints = false
            spectrumPointer.centerXAnchor.constraint(equalTo: layoutHelper.trailingAnchor).isActive = true
            spectrumPointer.widthAnchor.constraint(equalToConstant: 3).isActive = true
            spectrumPointer.topAnchor.constraint(equalTo: neutralityBorder.bottomAnchor).isActive = true
            spectrumPointer.bottomAnchor.constraint(equalTo: spectrum.topAnchor).isActive = true
        spectrumPointer.backgroundColor = .thirdDarkGreen5
        
        
    }
    func initCTAs() {
        self.cta = UILabel(); view.addSubview(cta)
            cta.translatesAutoresizingMaskIntoConstraints = false
            cta.leadingAnchor.constraint(equalTo: spectrum.leadingAnchor).isActive = true
            cta.trailingAnchor.constraint(equalTo: spectrum.trailingAnchor).isActive = true
            cta.topAnchor.constraint(equalToSystemSpacingBelow: spectrum.bottomAnchor, multiplier: 1).isActive = true
        
        cta.font = .proximaMedium
        cta.textColor = .black
        cta.text = """
        The survey you completed helped us come up with a estimated starting point for your journey to carbon neutralhood.
        
        But in order to receive benefits and incentives, you will need to provide us with some information to verify your expenses, and you will need to create an account.
        
        To get started, click the sign up button below!
        """
        cta.numberOfLines = 0
        
        self.ctaButton = UIButton(); view.addSubview(ctaButton)
            ctaButton.translatesAutoresizingMaskIntoConstraints = false
            ctaButton.trailingAnchor.constraint(equalTo: cta.trailingAnchor).isActive = true
            ctaButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -.padding).isActive = true
            ctaButton.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/3).isActive = true
            ctaButton.heightAnchor.constraint(equalToConstant: .buttonThin).isActive = true
        
        ctaButton.setBackgroundColor(color: .thirdDarkGreen5, forState: .normal)
        
        ctaButton.setTitle("Sign Up >", for: .normal)
        ctaButton.setTitleColor(.white, for: .normal)
        
        ctaButton.titleLabel?.font = .proximaLarge
        ctaButton.addTarget(self, action: #selector(toSignUp), for: .touchUpInside)
        
    }
 
}
