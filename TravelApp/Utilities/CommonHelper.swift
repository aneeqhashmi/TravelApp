//
//  CommonHelper.swift
//  Gurbi
//
//  Created by Hunain on 02/02/2016.
//  Copyright © 2016 Folio3. All rights reserved.
//

import UIKit
import CoreLocation

class CommonHelper: NSObject {

    static func dateToString(date:NSDate)->String{
    
        let dateString = NSDateFormatter.localizedStringFromDate(date, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.NoStyle)
        return dateString
        
    }
    
    static func dateTimeToString(date:NSDate)->String{
        
        let dateString = NSDateFormatter.localizedStringFromDate(date, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.MediumStyle)
        return dateString
        
    }
    
    static func isValidEmail(testStr:String) -> Bool {
        // println("validate calendar: \(testStr)")
        let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(testStr)
    }
    
}
