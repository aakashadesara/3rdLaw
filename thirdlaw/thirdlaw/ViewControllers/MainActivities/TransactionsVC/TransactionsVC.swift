//
//  TransactionsVC.swift
//  thirdlaw
//
//  Created by Bijal Patel on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Main - Variable declarations and setup information


import UIKit
import ARMDevSuite

class TransactionsVC: UIViewController {
    var header: UILabel!
    var topBar: UIView!
    var transactions = [Transaction]()
    var moreResults: UILabel!
    var loadMoreButton: UIButton!
    var analysisButton: UIButton!
    var bottomAnchorTransactions: NSLayoutYAxisAnchor!
    
    var alerts: AlertManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        initUI()
    }
    
}
