//
//  AppConstants.swift
//  Gurbi
//
//  Created by Aneeq Hashmi on 21/01/2016.
//  Copyright © 2016 Folio3. All rights reserved.
//

import Foundation
import UIKit

enum DAL:Int {
    case Kinvey = 0
    case None = 1
}

let MBaaS:DAL = DAL.Kinvey

enum StoryBoard: String {
    case Main = "Main"
    
}

struct Closures {
    typealias basicClosure = () -> Void
    typealias successClosure = (AnyObject) -> Void
    typealias failureClosureWithError = (NSError) -> Void
}

struct UserDefault
{
    
}

struct AppFonts {
    
}

struct AppColors {
    static let themeWhite = UIColor.whiteColor()
    static let themeDarkGray = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1)
    
}

