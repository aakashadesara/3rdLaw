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
        initButtons()
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
        paragraph.topAnchor.constraint(equalTo: topBar.bottomAnchor, constant:  .padding).isActive = true
        paragraph.font = .proximaBigish
        paragraph.text = """
        Every action has an equal and opposite reaction. \n
        Considering such, in order to get closer to carbon neutrality yourself, you can either reduce your carbon emissions, or offset usage by helping the planet in other ways. \n
        Click the options below to see how you can get to a more carbon neutral lifestyle!
        """
        paragraph.numberOfLines = 0
        paragraph.textColor = .thirdDarkGreen5
    }
    
    func initButtons() {
        func add(button: UIButton, text: String, img: UIImage) {
            button.addBorder(colored: .thirdDarkGreen5, thickness: 3)
            let label = UILabel(); button.addSubview(label)
                label.translatesAutoresizingMaskIntoConstraints = false
                label.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
                label.leadingAnchor.constraint(equalTo: button.centerXAnchor, constant: .marginalPadding).isActive = true
                label.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -.marginalPadding).isActive = true
            label.font = .abelLarge
            label.textAlignment = .center
            label.numberOfLines = 2
            label.textColor = .black
            label.text = text
            label.adjustsFontSizeToFitWidth = true
            
            let photo = UIImageView(); button.addSubview(photo)
                photo.translatesAutoresizingMaskIntoConstraints = false
                photo.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true
                photo.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: .marginalPadding).isActive = true
                photo.trailingAnchor.constraint(equalTo: button.centerXAnchor, constant: -.marginalPadding).isActive = true
                photo.heightAnchor.constraint(equalTo: button.heightAnchor, multiplier: 0.8).isActive = true
            photo.contentMode = .scaleAspectFit
            photo.image = img
            
        }
        
        self.lifestyleButton = UIButton(); view.addSubview(lifestyleButton)
            lifestyleButton.translatesAutoresizingMaskIntoConstraints = false
            lifestyleButton.leadingAnchor.constraint(equalTo: paragraph.leadingAnchor).isActive = true
            lifestyleButton.topAnchor.constraint(equalTo: paragraph.bottomAnchor, constant: .padding).isActive = true
            lifestyleButton.trailingAnchor.constraint(equalTo: paragraph.trailingAnchor).isActive = true
            lifestyleButton.heightAnchor.constraint(equalToConstant: .buttonThick * 1.5).isActive = true
        add(button: lifestyleButton, text: "Lifestyle\nChanges", img: UIImage(named: "lifestyle")!)
        
        self.offsetButton = UIButton(); view.addSubview(offsetButton)
        offsetButton.translatesAutoresizingMaskIntoConstraints = false
        offsetButton.leadingAnchor.constraint(equalTo: paragraph.leadingAnchor).isActive = true
        offsetButton.topAnchor.constraint(equalTo: lifestyleButton.bottomAnchor, constant: .padding).isActive = true
        offsetButton.trailingAnchor.constraint(equalTo: paragraph.trailingAnchor).isActive = true
        offsetButton.heightAnchor.constraint(equalToConstant: .buttonThick * 1.5).isActive = true
        add(button: offsetButton, text: "Environmental\nOffset", img: UIImage(named: "offsets")!)
        
        
    }

}
