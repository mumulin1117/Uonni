//
//  AppDelegate.swift
//  UonniHeadB
//
//  Created by UonniHeadB on 2025/5/9.
//
import AppTrackingTransparency
import FBSDKCoreKit
import UIKit
import SwiftyStoreKit
import AdjustSdk
@main


class AppDelegate: UIResponder, UIApplicationDelegate {

    static var fascinator:String = ""
    static var cloche:String = ""

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        tasseled()
        SwiftyStoreKit.completeTransactions(atomically: true) { pillbox in
           
            for newsboy in pillbox {
                let astatus = newsboy.transaction.transactionState
              
                
                if (astatus ==  .purchased || astatus ==  .restored) {

                    let downloads = newsboy.transaction.downloads
                    if !downloads.isEmpty {
                        SwiftyStoreKit.start(downloads)
                    }
                    
                    if newsboy.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(newsboy.transaction)
                    }
                }
                
            }
            
            
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }




}


enum AuthPhase {
    case welcome
    case avatarSelection
    case securitySetup
    case completion
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    private func tasseled() {
        let         holographic = ADJConfig(
               appToken: "jt4jclatev40",
               environment: ADJEnvironmentProduction
           )
                holographic?.logLevel = .verbose
                holographic?.enableSendingInBackground()
        Adjust.initSdk(        holographic)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "98c3xt")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    private func instanceSegmentation() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let sunhat = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.fascinator = sunhat
    }
}


