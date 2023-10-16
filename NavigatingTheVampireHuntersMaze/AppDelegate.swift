//
//  AppDelegate.swift
//  NavigatingTheVampireHuntersMaze
//
//  Created by Cenker Soyak on 16.10.2023.
//

import UIKit
import Hero

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let navCon = UINavigationController(rootViewController: ViewController())
        navCon.hero.isEnabled = true
        window?.rootViewController = navCon
        window?.makeKeyAndVisible()
        return true
    }

}

