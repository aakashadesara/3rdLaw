//
//  takeActionVC-initUI.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// UI Initialization - Create the View

import Foundation
import UIKit
import ARMDevSuite

extension TakeActionVC {
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
        header.text = "take action"
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
        Every action has an equal and opposite reaction. \n
        Considering such, in order to get closer to carbon neutrality yourself, you can either reduce your carbon emissions, or offset usage by helping the planet in other ways. \n
        Click the options below to see how you can get to a more carbon neutral lifestyle!
        """
        paragraph.numberOfLines = 0
        paragraph.textColor = .thirdDarkGreen5
        
        
    }

}
