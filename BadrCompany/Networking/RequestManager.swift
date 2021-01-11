//
//  LalaMoveRequestManager.swift
//  LalaMove
//
//  Created by Issam Alshamlat on 1/4/21.
//

import Foundation
import Alamofire

class RequestManager : BaseRequestManager {
    
    static func getUserInfo( _ completionHandler: @escaping RequestResult) {
        Alamofire.request(super.resolveRelativeURL("" ), method: .get, encoding: Alamofire.JSONEncoding.default).responseJSON { (response) in
            super.defaultResponseAction(response, completionHandler: completionHandler)
        }
    }
    
}
