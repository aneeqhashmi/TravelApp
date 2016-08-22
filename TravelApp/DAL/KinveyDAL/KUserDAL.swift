//
//  KUserDAL.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 20/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation

class KUserDAL: UserDAL {
    
    override func loginWithFacebook(token:String,success:Closures.successClosure, failure:Closures.failureClosureWithError) {
        
        KCSUser.loginWithSocialIdentity(
            KCSUserSocialIdentifyProvider.SocialIDFacebook,
            accessDictionary: [ KCSUserAccessTokenKey : token],
            withCompletionBlock:
            { (kUser: KCSUser!, errorOrNil: NSError!, result: KCSUserActionResult) -> Void in
                if errorOrNil != nil {
                    //handle error
                    failure(errorOrNil)
                }
                else
                {
                    let user = User(kUser: kUser)
                    success(user)
                }
            }
        )
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