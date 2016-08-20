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
//    private func initialize() -> AppSession
//    {
//        if let activeUser = KCSUser.activeUser()
//        {
//            user = activeUser;
//        }
//        
//        return self;
//    }
    
    private init()
    {
        if let activeUser = KCSUser.activeUser()
        {
            user = activeUser;
        }
    }
    
    static let sharedInstance =  AppSession()

    var user:KCSUser?
    
    func setActiveUserInSession()
    {
        self.user = KCSUser.activeUser()
    }
    
    func clear()
    {
        self.user = nil
    }
    
    

}