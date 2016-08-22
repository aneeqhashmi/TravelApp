//
//  UserManager.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 20/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation

class UserManager: BaseBLL {
    
    static func loginWithFacebook(token:String, success:Closures.successClosure, failure:Closures.failureClosureWithError) -> Void {
        
        let objDAL = UserDAL.factory()
        objDAL.loginWithFacebook(token, success: success, failure: failure)
    }
    
    static func getActiveUser()->User?
    {
        let objDAL = UserDAL.factory()
        return objDAL.getActiveUser()
    }
}