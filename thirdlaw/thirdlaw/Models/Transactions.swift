//
//  transactions.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import Foundation

class Transaction {
    var date: Date
    var price: Double
    var company: String
//    var rating:
    init(date: Date, price: Double, company: String) {
        self.date = date
        self.price = price
        self.company = company
    }
    
}