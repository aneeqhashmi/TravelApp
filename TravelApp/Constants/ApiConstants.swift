//
//  ApiConstants.swift
//  Gurbi
//
//  Created by Aneeq Hashmi on 21/01/2016.
//  Copyright © 2016 Folio3. All rights reserved.
//

import Foundation

struct URL {
    
    // baseURLs
    static let baseUrlMock = ""
    static let baseUrlLocal = ""
    static let baseUrlDev = "https://cmc-api-dev.folio3.com:4442"
    //"http://cmc-api-dev.folio3.com"
    static let baseUrlTest = "https://cmc-api-qa.folio3.com:444"
    //"https://demo6.folio3.com:444"
    static let baseUrlStaging = "https://cmc-api-staging.folio3.com"
    static let baseUrlProduction = "https://api.clickmycause.com"
    //"https://cmc-api.folio3.com"
    
    #if DEBUG
    static var baseUrl = baseUrlDev
    #else
    static var baseUrl = baseUrlProduction
    #endif
    
    
    // MARK: - Authorization
    static let signup = "/v1/auth/signup"
    static let login = "/v1/auth/login"
    static let fbLogin = "user/fblogin"
    static let logout = "/v1/user/logout"
    
    // MARK: - User
    static let autoLogin = "/v1/user/me"
    static let updateAPNS = "/v1/user/update-apns"
    static let forgotPwd = "/v1/auth/forgot-password"
    static let renewPwd = "/v1/auth/renew-password"
    static let modifyUser = "/v1/user/modify"
    static let feedback = "/v1/user/feedback"
    static let uploadImage = "/v1/user/upload-image"
    static let deleteImage = "/v1/user/delete-image"
   
    // MARK: - Organization
    static let verifyOrganizationCode = "/v1/organizations/verify"
    static let organizationDetails = ""
    static let organizationGetCode = "/v1/organizations/request-code"
    static let organizationList = "/v1/organizations"
    
    
    // MARK: - Bill
    static let notificationOpen = "/v1/action/open"
    static let billList = "/v1/bill/list"
    static let billProgress = ""
    static let sendPostcard = ""
    static let billUserAction = "/v1/action"
    
    // MARK: - Representatives
    static let representatives = "/v1/user/representatives"
    static let representativeList = "/v1/representative/list"
    static let contactMyRep = "/v1/representative/contact-my-rep"
    
    
    // MARK: - Notification
    static let setBadgeCount = "/v1/notification/reset-badge-count"
    
}

struct Defaults {

    // defaults
    static let pageSize = 10
    
}

struct RequestHeader {
    static let keyToken = "Authorization"
    static let valueToken = "Bearer "
    static let keyAccept = "Accept"
    static let valueVersion = "application/json; version=v"
}

struct RequestParam {
    
    struct Signup {
        
        static let name             = "name"
        static let deviceID         = "device_id"
        static let password         = "password"
        static let email            = "email"
        static let organizationID   = "organization_id"
        static let phone   = "phone"
    }
    
    
    struct Login {
        
        static let email    = "email"
        static let password = "password"
        static let deviceID = "device_id"
        
    }
    
    struct RenewPassword {
        
        static let email    = "email"
        static let password = "token"
        static let newPassword = "password"
        
    }
    
    struct VerifyOrganizationCode {
        
        static let code = "code"
    }
    
    struct OrganizationDetails {
        
        static let organizationID = "organization_id"
    }
    
    struct BillsList {
        
        static let perPage  = "per-page"
        static let page     = "page"
        static let sort     = "sort"
    }
    
    struct BillsDetails {
        
        static let billID = "bill_id"
        static let notificationID = "notification_id"
    }
    
    struct Feedback {
        
        static let text = "content"
        static let type = "type"
    }
    
//    struct SendPostcard {
//        
//        static let userNote = "user_note"
//    }
    
    struct billUserAction {
        
        static let userAction = "action"
        static let userNote = "user_note"
        static let notificationID = "notification_id"
    }
    
    struct Address {
        
        static let latitude     = "latitude"
        static let longitude    = "longitude"
        static let city         = "city"
        static let state        = "state"
        static let street       = "street_address"
        static let zipcode      = "zipcode"
    }
    struct Profile {
        
        static let name     = "name"
        static let about    = "about"
    }
    
    struct ContactMyRep {
        
        static let billID               = "bill_id"
        static let action               = "action"
        static let senators             = "senators"
        static let custonEmails         = "custom_emails"
        static let assemblyMembers      = "assembly_members"
        static let sendGovernor         = "send_to_governor"
        static let sendSenator          = "send_to_senator"
        static let sendAMember          = "send_to_assembly_member"
        static let userNote             = "user_note"
    }
    
    struct updateAPNS {
        static let apnsToken     = "apns_token"
    }
    
    struct Notification {
        static let badgecount      = "badge_count"
    }
}

struct ResponseCodes {
    static let signupEmailAlreadyExists = 108
    static let userUnauthorisedCode = 401
    static let customUserUnauthorizedCode = 40100
}