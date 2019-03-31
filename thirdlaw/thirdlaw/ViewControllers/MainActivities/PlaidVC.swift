//
//  PlaidVC.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/31/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//
// Main - Variable declarations and setup information


import UIKit
import ARMDevSuite
import LinkKit

class PlaidVC: UIViewController {
    
    // Data
    
    // System
    
    // UI Components
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let label = UILabel(frame: LayoutManager.inside(inside: self.view, justified: .TopCenter, verticalPadding: 30, horizontalPadding: 0, width: 100, height: 30))
        label.text = "Plaid"
        view.addSubview(label)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let config = PLKConfiguration(key: PlaidAPI.publicKey, env: .sandbox, product: .transactions)
        
        let linkViewDelegate = self
        let linkViewController = PLKPlaidLinkViewController(configuration: config, delegate: linkViewDelegate)
        
        if (UI_USER_INTERFACE_IDIOM() == .pad) {
            linkViewController.modalPresentationStyle = .formSheet;
        }
        present(linkViewController, animated: true)
        
        
    }
    
}

extension PlaidVC: PLKPlaidLinkViewDelegate {
    func linkViewController(_ linkViewController: PLKPlaidLinkViewController, didExitWithError error: Error?, metadata: [String : Any]?) {
        
        
        dismiss(animated: true) {
            if let error = error {
//                NSLog("Failed to link account due to: \(error.localizedDescription)\nmetadata: \(metadata ?? [:])")
//                self.handleError(error, metadata: metadata)
            }
            else {
//                NSLog("Plaid link exited with metadata: \(metadata ?? [:])")
//                self.handleExitWithMetadata(metadata)
            }
        }
        
        
    }
    
    func linkViewController(_ linkViewController:
        PLKPlaidLinkViewController, didSucceedWithPublicToken publicToken:
        String, metadata: [String : Any]?) {
        dismiss(animated: true) {
            // Handle success, e.g. by storing publicToken with your service
            NSLog("Successfully linked account!\npublicToken: \(publicToken)")
            PlaidAPI.publicToken = publicToken
            PlaidAPI.exchange(publicToken: publicToken, for: { (str) in
                print(str)
            })
        }
    }
    
    func linkViewController(_ linkViewController: PLKPlaidLinkViewController, didHandleEvent event: String, metadata: [String : Any]?) {
//        NSLog("Link event: \(event)\nmetadata: \(metadata ?? [:])")
    }
    
    
}
