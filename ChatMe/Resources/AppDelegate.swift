//
//  AppDelegate.swift
//  ChatMe
//
//  Created by Antt Min on 3/19/24.
//

import UIKit
import CoreData
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore
import FBSDKCoreKit
import GoogleSignIn


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate  {
    
   
func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
) -> Bool {
    
    FirebaseApp.configure()
    
    ApplicationDelegate.shared.application(
        application,
        didFinishLaunchingWithOptions: launchOptions
    )
    
    //google sign in
    
    
    
    
    return true
}
      
func application(
    _ app: UIApplication,
    open url: URL,
    options: [UIApplication.OpenURLOptionsKey : Any] = [:]
) -> Bool {
    ApplicationDelegate.shared.application(
        app,
        open: url,
        sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
        annotation: options[UIApplication.OpenURLOptionsKey.annotation]
    )
}
}


//func application(_ app: UIApplication,
//                 open url: URL,
//                 options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
//
//
//  return GIDSignIn.sharedInstance.handle(url)
//}




