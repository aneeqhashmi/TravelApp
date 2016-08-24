//
//  UserDAL.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 24/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation

protocol UserDAL {
    
    func loginWithFacebook(token:String,success:Closures.successClosure, failure:Closures.failureClosureWithError)
    
    func getActiveUser()->User?
    
    func logout()
    
}