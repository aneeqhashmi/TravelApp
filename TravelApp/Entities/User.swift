//
//  User.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 22/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

class User: baseEntity {
    
    var userId:String!
    var username:String!
    var firstName:String?
    var lastName:String?
    var fullname:String?
    var email:String?
    
    init(kUser:KCSUser)
    {
        userId = kUser.userId
        username = kUser.username
        firstName = kUser.givenName
        lastName = kUser.surname
        email = kUser.email
        
    }
    
    init(fUser:FIRUser)
    {
        let uInfo:FIRUserInfo = fUser.providerData[0]
        userId = uInfo.uid
        username = fUser.uid
        fullname = uInfo.displayName
        email = uInfo.email
        
    }
}