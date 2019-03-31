//
//  BankAccountVC-initUI.swift
//  thirdlaw
//
//  Created by Aakash Adesara on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// UI Initialization - Create the View

import Foundation
import UIKit
import ARMDevSuite

extension BankAccountVC {
    func initUI() {
        initHeader()
        initTopBar()
        initParagraph()
    }

    // UI Initialization Helpers
    func initHeader(){
        self.header = UILabel(); view.addSubview(header)
        header.translatesAutoresizingMaskIntoConstraints = false
        header.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.safeAreaLayoutGuide.centerXAnchor, multiplier: 1).isActive = true
        header.topAnchor.constraint(equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.topAnchor, multiplier: 1).isActive = true
        header.font = UIFont.abelLarge
        header.text = "bank account"
        header.textColor = .white
        
    }
    
    func initTopBar(){
        self.topBar = UIView(); view.addSubview(topBar); view.sendSubviewToBack(topBar)
        topBar.translatesAutoresizingMaskIntoConstraints = false
        topBar.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        topBar.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        topBar.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        topBar.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: .padding).isActive = true
        topBar.backgroundColor = .thirdDarkGreen5
    }
    
    func initParagraph(){
        self.paragraph = UILabel(); view.addSubview(paragraph)
        paragraph.translatesAutoresizingMaskIntoConstraints = false
        paragraph.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: .padding).isActive = true
        paragraph.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -.padding).isActive = true
        paragraph.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        paragraph.topAnchor.constraint(equalTo: topBar.bottomAnchor, constant:  .padding).isActive = true
        paragraph.font = .proximaLarge
        paragraph.text = """
        We are going to use your bank account to cross check your payment history in order to validate how eco-friendly your spending patterns are.
        
        This step is optional to use the application but if you would like to reap the benefits and get incentives, we recommend you follow through with this step!
        """
        paragraph.numberOfLines = 0
        paragraph.textColor = .thirdDarkGreen5
        
        
    }


}
