//
//  FIRUserDAL.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 23/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase
import FirebaseAuth


class FIRUserDAL: UserDAL {
    
    override func loginWithFacebook(token:String,success:Closures.successClosure, failure:Closures.failureClosureWithError) {
        
//        let ref = FIRDatabase.database().reference()
        
        let credential = FIRFacebookAuthProvider.credentialWithAccessToken(token)
        FIRAuth.auth()?.signInWithCredential(credential) { (user, error) in
            // handle logged in user
            
            if let e = error
            {
                failure(e)
            }
            else
            {
                let fUser = User(fUser: user!)
                success(fUser)
            }
        }
        
        
        
    }
    
    override func getActiveUser()->User?
    {
        var user:User? = nil
        if let activeUser = KCSUser.activeUser()
        {
            user = User(kUser: activeUser)
        }
        
        return user
    }
}