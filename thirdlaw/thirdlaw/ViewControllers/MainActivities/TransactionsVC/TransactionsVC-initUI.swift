//
//  File.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// UI Initialization - Create the View

import Foundation
import UIKit
import ARMDevSuite

extension TransactionsVC {
    func initUI() {
        initHeader()
        initTopBar()
        initTransactions()
        initOtherResults()
        initLoadButton()
        initAnalysisButton()
    }

    // UI Initialization Helpers
    func initHeader(){
        self.header = UILabel(); view.addSubview(header)
        header.translatesAutoresizingMaskIntoConstraints = false
        header.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.safeAreaLayoutGuide.centerXAnchor, multiplier: 1).isActive = true
        header.topAnchor.constraint(equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.topAnchor, multiplier: 1).isActive = true
        header.font = UIFont.abelLarge
        header.text = "your transactions"
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
    
    func initTransactions(){
        
        var nextTop = topBar.bottomAnchor
        
        for i in 0..<5{
            let transactionData = self.transactions[i]
            
            let date = UILabel(); view.addSubview(date)
            date.translatesAutoresizingMaskIntoConstraints = false
            date.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: .padding).isActive = true
            date.topAnchor.constraint(equalTo: nextTop, constant: .padding).isActive = true
            date.font = .proximaMedium
            date.text = LogicSuite.getMDDYYRepr(date: transactionData.date)
            
            let price = UILabel(); view.addSubview(price)
            price.translatesAutoresizingMaskIntoConstraints = false
            price.leftAnchor.constraint(equalTo: date.leftAnchor).isActive = true
            price.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 10).isActive = true
            price.font = .proximaLarge
            
            price.text = String(format: "$%.2f", transactionData.price)
            price.textColor = .thirdDarkGreen5
            
            let company = UILabel(); view.addSubview(company)
            company.translatesAutoresizingMaskIntoConstraints = false
            company.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -.padding).isActive = true
            company.topAnchor.constraint(equalTo: nextTop, constant: .padding).isActive = true
            company.font = .proximaLarge
            company.text = transactionData.company
            
            let rating = UILabel(); view.addSubview(rating)
            rating.translatesAutoresizingMaskIntoConstraints = false
            rating.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -.padding).isActive = true
            rating.topAnchor.constraint(equalTo: company.bottomAnchor, constant: 10).isActive = true
            rating.font = .proximaLarge
            rating.text = "Rating: \(transactionData.rating.descriptor)"
            rating.textColor = transactionData.rating.color
            
            let line = UIView(); view.addSubview(line)
            line.translatesAutoresizingMaskIntoConstraints = false
            line.topAnchor.constraint(equalTo: rating.bottomAnchor, constant: 10).isActive = true
            line.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 9/10).isActive = true
            line.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
            line.heightAnchor.constraint(equalToConstant: 5).isActive = true
            line.backgroundColor = .thirdLightGray
            
            nextTop = line.bottomAnchor
            
            
            // make a date label in top right (use nexTop anchor)
            // datelabel.text = Ls.getmmdyy(tdata.date)
            
            // make company label in top left
            // companylabel.text = tdata.company
            
            // make uiview line to separate txns
            // nextTop = uiview(line).bottomAnchor
            
        }
        self.bottomAnchorTransactions = nextTop
    }
    
    func initOtherResults(){
        self.moreResults = UILabel(); view.addSubview(moreResults);
        moreResults.translatesAutoresizingMaskIntoConstraints = false
        moreResults.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        moreResults.topAnchor.constraint(equalTo: self.bottomAnchorTransactions, constant: .padding).isActive = true
//        moreResults.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        moreResults.font = UIFont.proximaMedium
        moreResults.text = "and 5,341 other results"
        moreResults.textColor = .thirdLightGray
    }
    
    func initLoadButton(){
        self.loadMoreButton = UIButton(); view.addSubview(loadMoreButton)
        loadMoreButton.translatesAutoresizingMaskIntoConstraints = false
        loadMoreButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        loadMoreButton.topAnchor.constraint(equalTo: moreResults.bottomAnchor).isActive = true
        loadMoreButton.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2).isActive = true
        loadMoreButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        loadMoreButton.setTitle("Load More", for: .normal)
        loadMoreButton.setTitleColor(.thirdDarkGreen5, for: .normal)
        loadMoreButton.titleLabel?.font = .proximaLarge
        loadMoreButton.backgroundColor = .white
        loadMoreButton.addTarget(self, action: #selector(loadMore), for: .touchUpInside)
    }
    
    func initAnalysisButton(){
        let analysisButton = UIButton(); view.addSubview(analysisButton)
        analysisButton.translatesAutoresizingMaskIntoConstraints = false
        analysisButton.rightAnchor.constraint(equalToSystemSpacingAfter: self.view.safeAreaLayoutGuide.rightAnchor, multiplier: 1).isActive = true
        
        analysisButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -3 * .padding).isActive = true
        analysisButton.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2).isActive = true
        analysisButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        analysisButton.setTitle("Analysis >", for: .normal)
        analysisButton.titleLabel?.font = .proximaLarge
        analysisButton.backgroundColor = .thirdDarkGreen5
        analysisButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }

}

