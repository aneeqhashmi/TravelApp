//
//  ViewController.swift
//  TravelApp
//
//  Created by Aneeq Hashmi on 03/08/2016.
//  Copyright © 2016 example. All rights reserved.
//

import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController,FBSDKLoginButtonDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let loginButton = FBSDKLoginButton()
        // Optional: Place the button in the center of your view.
        loginButton.center = self.view.center
        loginButton.delegate = self
        loginButton.readPermissions = ["public_profile","user_friends"]
        self.view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        NSLog("Logout")
    }

    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        
        if(result.token != nil)
        {
            NSLog("Permission accepted")
            
            UserManager.loginWithFacebook(result.token.tokenString, success: { (objUser:AnyObject) in
                    let user = objUser as! User
                    NSLog("Username: %@", user.username)
                
                }, failure: { (error:NSError) in
                    
                    NSLog("Login Fail")
                    let loginManager:FBSDKLoginManager = FBSDKLoginManager()
                    loginManager.logOut()
            })
            
        }
        else
        {
            NSLog("Permission denied")

        }
    }
    
}

