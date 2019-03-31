//
//  SignUpVC-initUI.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Logic - Functions relating to the core functionality/value prop of the application.

import Foundation
import UIKit
import ARMDevSuite

extension SignUpVC {
    func initUI(){
        initHeader()
        initTopBar()
        initImageView()
    }
    
    func initHeader(){
        self.header = UILabel(); view.addSubview(header)
        header.translatesAutoresizingMaskIntoConstraints = false
        header.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.safeAreaLayoutGuide.centerXAnchor, multiplier: 1).isActive = true
        header.topAnchor.constraint(equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.topAnchor, multiplier: 1).isActive = true
        header.font = UIFont.abelLarge
        header.text = "sign up"
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
    
    func initImageView(){
        self.imageView = UIImageView(); view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topBar.bottomAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "signup")
    }
    
    func initFirstName(){
        self.firstName = ARMTextField(); view.addSubview(firstName)
        firstName.translatesAutoresizingMaskIntoConstraints = false
        firstName.leftAnchor.constraint(equalToSystemSpacingAfter: self.view.safeAreaLayoutGuide.leftAnchor, multiplier: 1).isActive = true
        
//        firstName.text = "First Name:"
    }

}
