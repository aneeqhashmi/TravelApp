//
//  User.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 22/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation

class User: baseEntity {
    
    var userId:String!
    var username:String!
    var firstName:String?
    var lastName:String?
    var email:String?
    
    init(kUser:KCSUser)
    {
        userId = kUser.userId
        username = kUser.username
        firstName = kUser.givenName
        lastName = kUser.surname
        email = kUser.email
        
    }
}