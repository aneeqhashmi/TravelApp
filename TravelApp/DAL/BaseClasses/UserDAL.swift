//
//  UserDAL.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 20/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation

class UserDAL:NSObject {
    
    static func factory()->UserDAL
    {
        var userDAL:UserDAL? = nil
        
        switch MBaaS {
        
            case DAL.Kinvey:
                userDAL = KUserDAL()
                break
            
            case DAL.Firebase:
            userDAL = FIRUserDAL()
            break
            
            default:
                assert(false,"Given MBaaS is not implemented")
                break
        }
        
        return userDAL!
    }
    
    func loginWithFacebook(token:String,success:Closures.successClosure, failure:Closures.failureClosureWithError)
    {
        preconditionFailure("This method must be overridden")
    }
    
    func getActiveUser()->User?
    {
        preconditionFailure("This method must be overridden")
    }
    
    func logout()
    {
        preconditionFailure("This method must be overridden")
    }
}

