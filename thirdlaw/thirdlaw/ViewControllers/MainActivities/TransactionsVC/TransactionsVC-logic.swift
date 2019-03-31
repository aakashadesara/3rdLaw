//
//  TransactionsVC-logic.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Logic - Functions relating to the core functionality/value prop of the application.

import Foundation
import UIKit
import ARMDevSuite

extension TransactionsVC {
    func getData() {
        let today = Date()
        
        // start...end = [start, end]
        // start..<end = [start, end)
        for i in 0..<5 {
            let offsetDays = -Int.random(in: 0...7)
            let date = today.addingTimeInterval(TimeInterval(offsetDays * 24 * 60 * 60))
            let price = Double.random(in: 10.0...50.0)
            let company = ["Burger King", "Taco Bell", "Steakhouse", "Burger King", "Hummers"][i]
            
            transactions.append(Transaction(date: date, price: price, company: company, rating: EcoFriendliness.cases.randomElement()!))
        }
            
    }
    
    @objc func loadMore() {
        alerts.displayAlert(titled: "Oops", withDetail: "Unable to show more")
    }
    @objc func buttonClicked() {
        
    }


}

