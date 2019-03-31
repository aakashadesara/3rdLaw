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
        initFirstName()
        initLastName()
        initUserName()
        initPassword()
        initButton()
        addDismissGestureRecognizer()
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
        firstName.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        firstName.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 9/10).isActive = true
        firstName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        firstName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        firstName.lineColor = .thirdLightGray
        firstName.selectedLineColor = .thirdDarkGreen5
        firstName.placeholderFont = .proximaMedium
        firstName.placeholderColor = .thirdLightGray
        firstName.placeholder = "First Name"
        firstName.titleColor = .thirdDarkGreen5
        firstName.selectedTitleColor = .thirdDarkGreen5
        firstName.titleFont = .proximaSmall
        firstName.font = .proximaMedium
    }
    
    func initLastName(){
        self.lastName = ARMTextField(); view.addSubview(lastName)
        lastName.translatesAutoresizingMaskIntoConstraints = false
        lastName.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: .padding).isActive = true
        lastName.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 9/10).isActive = true
        lastName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        lastName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        lastName.lineColor = .thirdLightGray
        lastName.selectedLineColor = .thirdDarkGreen5
        lastName.placeholderFont = .proximaMedium
        lastName.placeholderColor = .thirdLightGray
        lastName.placeholder = "Last Name"
        lastName.titleColor = .thirdDarkGreen5
        lastName.selectedTitleColor = .thirdDarkGreen5
        lastName.titleFont = .proximaSmall
        lastName.font = .proximaMedium
    }
    
    func initUserName(){
        self.userName = ARMTextField(); view.addSubview(userName)
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.topAnchor.constraint(equalTo: lastName.bottomAnchor, constant: .padding).isActive = true
        userName.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 9/10).isActive = true
        userName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        userName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        userName.lineColor = .thirdLightGray
        userName.selectedLineColor = .thirdDarkGreen5
        userName.placeholderFont = .proximaMedium
        userName.placeholderColor = .thirdLightGray
        userName.placeholder = "Username"
        userName.titleColor = .thirdDarkGreen5
        userName.selectedTitleColor = .thirdDarkGreen5
        userName.titleFont = .proximaSmall
        userName.font = .proximaMedium
    }
    
    func initPassword(){
        self.password = ARMTextField(); view.addSubview(password)
        password.translatesAutoresizingMaskIntoConstraints = false
        password.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: .padding).isActive = true
        password.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 9/10).isActive = true
        password.heightAnchor.constraint(equalToConstant: 50).isActive = true
        password.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        password.lineColor = .thirdLightGray
        password.selectedLineColor = .thirdDarkGreen5
        password.placeholderFont = .proximaMedium
        password.placeholderColor = .thirdLightGray
        password.placeholder = "Password"
        password.titleColor = .thirdDarkGreen5
        password.selectedTitleColor = .thirdDarkGreen5
        password.titleFont = .proximaSmall
        password.font = .proximaMedium
        password.isSecureTextEntry = true
        password.autocapitalizationType = .none
    }
    
    func initButton(){
        self.nextButton = UIButton(); view.addSubview(nextButton)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.rightAnchor.constraint(equalToSystemSpacingAfter: self.view.safeAreaLayoutGuide.rightAnchor, multiplier: 1).isActive = true
        
        nextButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -.padding).isActive = true
        nextButton.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        nextButton.setTitle("Next >", for: .normal)
        nextButton.titleLabel?.font = .proximaLarge
        nextButton.backgroundColor = .thirdDarkGreen5
        nextButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    func addDismissGestureRecognizer() {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(keyboardDismiss)))
    }
    @objc func keyboardDismiss() {
        self.view.firstResponder?.resignFirstResponder()
    }
}
