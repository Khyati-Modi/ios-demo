//
//  AppDelegate.swift
//  VirtualExam
//
//  Created by Rajan Shah on 27/03/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        print("Current Env: \(getEnvironment())")
        print("Base URL: \(getBaseURLString())")
        print("Localized String: \(Helper.getLocalizedString(localizedKey: "welcome"))")
        return true
    }
    
    private func getBaseURLString() -> String {
        return PlistHelper.shared.getString(forKey: SAiOS.apiBaseURL.rawValue) ?? General.NoBaseURL
    }
    
    private func getEnvironment() -> Environment {
        return Env.shared.environment
    }
}
