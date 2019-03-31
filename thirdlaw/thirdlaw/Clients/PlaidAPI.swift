//
//  PlaidAPI.swift
//  thirdlaw
//
//  Created by Ajay Merchia on 3/30/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PlaidAPI {
    static var publicToken: String? {
        didSet {
            print("Public Token Received: \(PlaidAPI.publicToken!)")
        }
    }
    static var accessToken: String? {
        didSet {
            print("Access Token Received: \(PlaidAPI.accessToken!)")
        }
    }
    static let tokenExchangeEndpoint = "https://sandbox.plaid.com/item/public_token/exchange"
    
    static let publicKey = "2e90a10f83b46bfb9c44d0d4131653"
    static let secret = "57e2112d8a9c17a6e1238f7a55c172"
    
    static let defaultUser = "user_good"
    static let defaultPassword = "pass_good"
    
    static func exchange(publicToken: String, for accessToken: @escaping ((String) -> ())) {
        var parameters: Parameters = [:]
        parameters["client_id"] = publicKey
        parameters["secret"] = secret
        parameters["public_token"] = publicToken
        
        var headers: HTTPHeaders = [:]
        headers["Content-Type"] = "application/json"
        
        
        Alamofire.request(tokenExchangeEndpoint, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (response) in
            let json = JSON(response.result.value!)
            debugPrint(json)

        }
    }
}
