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
    
    func loginWithFacebook(token:String,success:Closures.successClosure, failure:Closures.failureClosureWithError) {
        
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
    
    func getActiveUser()->User?
    {
        //let ref = FIRDatabase.database().reference()
        
        var user:User? = nil
        if let activeUser = FIRAuth.auth()?.currentUser
        {
            user = User(fUser: activeUser)
        }
        
        return user
    }
    
    func logout() {
        
        if ((FIRAuth.auth()?.currentUser) != nil)
        {
            do{
                try FIRAuth.auth()?.signOut()
            }
            catch
            {
                NSLog("Logout fails.")
            }
        }
    }
}