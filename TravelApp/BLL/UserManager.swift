//
//  UserManager.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 20/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation

class UserManager: BaseBLL {
    
    var objDAL:UserDAL!
    
    override init() {
        super.init()
        objDAL = UserDAL.factory()
    }
    
    func loginWithFacebook(token:String, success:Closures.successClosure, failure:Closures.failureClosureWithError) -> Void {
        
        objDAL.loginWithFacebook(token, success: success, failure: failure)
    }
    
    func getActiveUser()->User?
    {
        return objDAL.getActiveUser()
    }
    
    func logout()
    {
        objDAL.logout()
    }
}