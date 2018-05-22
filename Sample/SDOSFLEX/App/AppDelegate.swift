//
//  AppDelegate.swift
//  SDOSFLEX
//
//  Created by Rafael Fernandez Alvarez on 22/05/2018.
//  Copyright © 2018 SDOS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        
        let storyboard = UIStoryboard.init(name: ExampleFLEX, bundle: nil)
        let viewcontroller = storyboard.instantiateInitialViewController()
        
        self.window?.rootViewController = viewcontroller
        self.window?.makeKeyAndVisible()
        
        return true
        
    }
}
