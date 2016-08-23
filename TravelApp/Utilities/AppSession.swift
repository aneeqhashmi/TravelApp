//
//  AppSession.swift
//  Gurbi
//
//  Created by Aneeq Hashmi on 26/01/2016.
//  Copyright © 2016 Folio3. All rights reserved.
//

import Foundation
import UIKit

class AppSession
{
    private init()
    {
        user = UserManager().getActiveUser()
        if(user != nil)
        {
            NSLog("username: %@",user!.username)
        }
        
    }
    
    static let sharedInstance =  AppSession()

    var user:User?
    
    
    func clear()
    {
        self.user = nil
    }
    
    

}