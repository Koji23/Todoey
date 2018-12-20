//
//  AppDelegate.swift
//  Todoey
//
//  Created by Jordan Chong on 12/14/18.
//  Copyright © 2018 Jordan Chong. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        print(Realm.Configuration.defaultConfiguration.fileURL)
       
        do {
            _ = try Realm() // unused var just use _
        } catch {
            print("Error initializing Realm, \(error)")
        }

        return true
    }
}

