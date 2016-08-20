//
//  MessageConstants.swift
//  Gurbi
//
//  Created by Aneeq Hashmi on 11/03/2016.
//  Copyright © 2016 Folio3. All rights reserved.
//

import Foundation

struct Alert {
    
    struct header {
        
        struct failure {
            
            static let general = "Error"
            static let warning = "Warning"
        }
        struct confirmation {
            static let general = "Confirm?"
        }
    }
    
    struct message {
        
        struct failure {
            static let generalMessage = "Please contact administrator."
            static let NetworkIssues = "Something is wrong with your internet connection. Please try again in a while!"
        }
        
        struct validation {
        }
        struct confirmation {
           
        }

    }
    struct actions {
        
    }

}


struct displayMessages {
    
}