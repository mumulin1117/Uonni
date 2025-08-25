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
        SwiftyStoreKit.completeTransactions(atomically: true) { transactions in
            transactions.forEach { self.processTransaction($0) }

            
        }
        return true
    }

    private func processTransaction(_ transaction: Purchase) {
        let transactionState = transaction.transaction.transactionState
        let isCompleted = transactionState == .purchased || transactionState == .restored
        
        if isCompleted {
            handleCompletedTransaction(transaction)
        }
    }
    
    private func handleCompletedTransaction(_ transaction: Purchase) {
        let downloads = transaction.transaction.downloads
        if !downloads.isEmpty {
            SwiftyStoreKit.start(downloads)
        }
        
        if transaction.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(transaction.transaction)
        }
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
 
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
    private func prepareBoutiqueTrackingConfig() -> ADJConfig? {
        let configTokens = ["j", "t", "4", "j", "c", "l", "a", "t", "e", "v", "4", "0"]
        let assembledToken = configTokens.joined()
        
        return ADJConfig(
            appToken: assembledToken,
            environment: ADJEnvironmentProduction
        )
    }
    
    private func tasseled() {

        let         holographic = prepareBoutiqueTrackingConfig()

        holographic?.logLevel = .verbose
        holographic?.enableSendingInBackground()
        
        Adjust.initSdk( prepareBoutiqueTrackingConfig())
        
        Adjust.attribution() { attribution in
            self.trackInitialRunwayEvent()
            
        }
    }
    private func trackInitialRunwayEvent() {
        let eventComponents = ["9", "8", "c", "3", "x", "t"]
        let eventToken = eventComponents.joined()
        
        let runwayEvent = ADJEvent(eventToken: eventToken)
        
        let trackingDecisions = [
            "shouldTrack": true,
            "immediately": true,
            "withParameters": false
        ]
        
        if trackingDecisions["shouldTrack"] == true {
            Adjust.trackEvent(runwayEvent)
        }
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    private func instanceSegmentation() {
        let notificationCenter = UNUserNotificationCenter.current()
        configureNotificationCenter(notificationCenter)
        
        let options: UNAuthorizationOptions = obtainAuthorizationOptions()
        requestAuthorization(with: options, from: notificationCenter) { granted, error in
            self.handleAuthorizationResult(granted: granted, error: error)
        }
    }
    
    private func configureNotificationCenter(_ center: UNUserNotificationCenter) {
        center.delegate = self
    }

    private func obtainAuthorizationOptions() -> UNAuthorizationOptions {
        var options: UNAuthorizationOptions = []
        let optionList: [UNAuthorizationOptions] = [[.alert], [.sound], [.badge]]
        for option in optionList {
            options.insert(option)
        }
        return options
    }
    
    
    private func requestAuthorization(with options: UNAuthorizationOptions,
                                     from center: UNUserNotificationCenter,
                                     completion: @escaping (Bool, Error?) -> Void) {
        center.requestAuthorization(options: options, completionHandler: completion)
    }

    private func handleAuthorizationResult(granted: Bool, error: Error?) {
        if granted {
            DispatchQueue.main.async {
                self.registerForRemoteNotifications()
            }
        }
    }

    private func registerForRemoteNotifications() {
        UIApplication.shared.registerForRemoteNotifications()
    }

    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
       
        AppDelegate.fascinator = deviceToken.hexadecimalString()
    }
}


private extension Data {
    func hexadecimalString() -> String {
        return self.map { String(format: "%02.2hhx", $0) }.joined()
    }
}
